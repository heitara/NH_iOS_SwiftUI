//
//  ViewController.swift
//  UIKitStarter
//
//  Created by Emil Atanasov on 02/27/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupSwiftUIView()
    }

    func setupSwiftUIView() {
        let weatherView = WeatherView(temperature: 22.5, condition: "cloudy")
        
        let hostingViewController = UIHostingController(rootView: weatherView)
        addChild(hostingViewController)
        view.addSubview(hostingViewController.view)
        
        hostingViewController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingViewController.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hostingViewController.view.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
        ])
        
        hostingViewController.didMove(toParent: self)
    }
}

