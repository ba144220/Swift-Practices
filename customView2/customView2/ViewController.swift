//
//  ViewController.swift
//  customView2
//
//  Created by Yu Chi Hsu on 2021/3/25.
//

import UIKit

class ViewController: UIViewController {
    
    var customInputBox1: CustomInputBox!
    var customInputBox2: CustomInputBox!
    var customInputBox3: CustomInputBox!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        customInputBox1 = CustomInputBox(frame: CGRect(x: 0, y: 50, width: 300, height: 72), title: "Name")
        customInputBox2 = CustomInputBox(frame: CGRect(x: 0, y: 122, width: 300, height: 72), title: "Email")
        customInputBox3 = CustomInputBox(frame: CGRect(x: 0, y: 194, width: 300, height: 72), title: "Phone Number")
        self.view.addSubview(customInputBox1)
        self.view.addSubview(customInputBox2)
        self.view.addSubview(customInputBox3)
    }
}

