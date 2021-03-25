//
//  ViewController.swift
//  customView2
//
//  Created by Yu Chi Hsu on 2021/3/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customInputBox1: CustomInputBox!
    @IBOutlet weak var customInputBox2: CustomInputBox!
    @IBOutlet weak var customInputBox3: CustomInputBox!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        customInputBox1 = CustomInputBox(frame: CGRect(x: 0, y: 50, width: 300, height: 72))
        customInputBox2 = CustomInputBox(frame: CGRect(x: 0, y: 122, width: 300, height: 72))
        customInputBox3 = CustomInputBox(frame: CGRect(x: 0, y: 194, width: 300, height: 72))*/
        self.view.addSubview(customInputBox1)
        self.view.addSubview(customInputBox2)
        self.view.addSubview(customInputBox3)
    }


}

