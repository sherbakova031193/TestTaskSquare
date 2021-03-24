//
//  ViewController.swift
//  TestTask
//
//  Created by Елизавета Щербакова on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private var squareView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        configureAnimate()
    }
    
    private func configureSubviews() {
        view.backgroundColor = .white
        squareView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        squareView.center = view.center
        squareView.backgroundColor = .cyan
        view.addSubview(squareView)
    }
    
    private func configureAnimate() {
        UIView.animate(withDuration: 0.3, delay: 0.3, options: .curveEaseOut) {
            self.squareView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        }
    }
}

