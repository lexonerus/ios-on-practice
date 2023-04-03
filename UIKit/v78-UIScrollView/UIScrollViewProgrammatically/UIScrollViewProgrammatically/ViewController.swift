//
//  ViewController.swift
//  UIScrollViewProgrammatically
//
//  Created by Alexey Krzywicki on 02.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Views
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let label = UILabel()
    private let testView = UIView()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }

}

private extension ViewController {
    func setupLayout() {
        configureScrollView()
        configureContentView()
        prepareScrollView()
        configureLabel()
        configureTestView()
        addContentToScrollView()
    }
    func configureScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.alwaysBounceVertical = true
        scrollView.backgroundColor = .blue
    }
    func configureContentView() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = .green
    }
    func prepareScrollView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }
    func configureLabel() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Scrollable content goes here"
    }
    func configureTestView() {
        testView.backgroundColor = .systemRed
        testView.translatesAutoresizingMaskIntoConstraints = false
    }
    func addContentToScrollView() {
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50),
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
        
        contentView.addSubview(testView)
        
        NSLayoutConstraint.activate([
            testView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
            testView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            testView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            testView.heightAnchor.constraint(equalToConstant: 2000),
            testView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
