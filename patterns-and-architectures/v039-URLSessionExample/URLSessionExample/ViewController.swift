//
//  ViewController.swift
//  URLSessionExample
//
//  Created by Alex Krzywicki on 04.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var imageWidth = ""
    var imageHeight = ""
    
    @IBOutlet var imageView: UIImageView!
    @IBAction func getImageButtonPressed(_ sender: Any) {
        // 1) Получаем API
        let API = "https://picsum.photos/" + imageWidth + "/" + imageHeight
        // 2) Создаение URL
        guard let apiURL = URL(string: API) else {
            fatalError("some Error")
        }
        // 3) Инициализировать сессию
        let session = URLSession(configuration: .default)
        // 4) Создать запрос dataTask
        let task = session.dataTask(with: apiURL) { (data, response, error) in
            // 5) Обработать полученные данные
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async {
                // data = .jpeg
                self.imageView.image = UIImage(data: data)
            }
        }
        // Запустить запрос
        task.resume()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let height = imageView.bounds.height
        self.imageHeight = String(format: "%.0f", Double(height))
        let width = imageView.bounds.width
        self.imageWidth = String(format: "%.0f", Double(width))
    }


}

