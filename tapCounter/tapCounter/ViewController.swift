//
//  ViewController.swift
//  tapCounter
//
//  Created by Yu Chi Hsu on 2021/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Setup numberLabel
        numberLabel.text = "0"
        numberLabel.textColor = .black
        
        addButton.addTarget(self, action: #selector(addButtonHandler(_:)), for: .touchUpInside )
        clearButton.addTarget(self, action: #selector(clearButtonHandler(_:)), for: .touchUpInside )
        
    }
    
    @objc func addButtonHandler(_ sender: UIButton){
       
        let num: Int = Int(numberLabel.text ?? "0") ?? 0
        numberLabel.text = String(num+1)
        
    }
    @objc func clearButtonHandler(_ sender: UIButton){
        numberLabel.text = String(0)
    }
}

