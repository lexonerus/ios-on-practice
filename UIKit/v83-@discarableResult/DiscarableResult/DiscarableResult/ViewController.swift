//
//  ViewController.swift
//  DiscarableResult
//
//  Created by Alexey Krzywicki on 23.07.2023.
//

// API link
// https://catfact.ninja/#/Breeds/getBreeds

import UIKit


struct CatFact: Codable {
    let fact: String
    let length: Int
}

enum NetworkError: Error {
    case invalidUrl
    case requestFailed
    case invalidResponse
    case decodingFailed
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        doSomething()
        
        let task = getCatFact() { result in
            switch result {
            case .success(let catFact):
                print(catFact)
            case .failure(let error):
                print(error)
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            task?.cancel()
        }
        
    }

    @discardableResult
    func doSomething() -> Int {
        return 42
    }

    @discardableResult
    func getCatFact(completion: @escaping (Result<CatFact, Error>) -> Void) -> URLSessionDataTask? {
        let urlString = "https://catfact.ninja/fact"
        
        guard let url = URL(string: urlString) else {
            completion(.failure(NetworkError.invalidUrl))
            return nil
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, let response = response as? HTTPURLResponse, (200..<300).contains(response.statusCode) else {
                completion(.failure(NetworkError.requestFailed))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let catFact = try decoder.decode(CatFact.self, from: data)
                completion(.success(catFact))
            } catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
        return task
    }
    
}

