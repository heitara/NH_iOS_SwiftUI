//
//  ViewController.swift
//  DemoUIKitApp
//
//  Created by Emil Atanasov on 02/11/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
//        let label = UILabel()
        label.text = "Hi UIKit!"
        label.textColor = .green
        view.addSubview(label)
    }


}

