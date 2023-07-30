//
//  ViewController.swift
//  DiscarableResult
//
//  Created by Alexey Krzywicki on 23.07.2023.
//

// API link
// https://catfact.ninja/#/Breeds/getBreeds

import UIKit

// MARK: - Network helpers
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

// MARK: - ViewController
class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var getNewButton: UIButton!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Methods
    // Update textView with some string
    func updateText(with fact: String) {
        DispatchQueue.main.async {
            self.textView.text = fact
        }
    }
    
    // Get cat fact from API
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
    
    // Get new button action
    @IBAction func getNewButtonAction(_ sender: Any) {
        let task = getCatFact() { result in
            switch result {
            case .success(let catFact):
                // if request works well, update text
                print(catFact)
                self.updateText(with: catFact.fact)
            case .failure(let error):
                // if request fails, update text
                print(error)
                self.updateText(with: "Sorry =( \nSome error happend")
            }
        }
        
        // if request stacked, cancel and update text
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
            if task?.state == .running {
                task?.cancel()
                self.updateText(with: "Sorry =( \nSome error happend")
            }
        }
    }
    
}

