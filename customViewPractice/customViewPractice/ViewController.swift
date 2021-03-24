//
//  ViewController.swift
//  customViewPractice
//
//  Created by Yu Chi Hsu on 2021/3/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let customView = CustomView(frame: CGRect(x: 20, y: 20, width: 200, height: 200))
        self.view.addSubview(customView)
    }


}

