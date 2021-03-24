//
//  ViewController.swift
//  tapOrPressCounter
//
//  Created by Yu Chi Hsu on 2021/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var tapButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numberLabel.text = "0"
        
        viewModel = ViewModel()
        
        tapButton.addTarget(self, action: #selector(tap(_:)), for: .touchUpInside)
        clearButton.addTarget(self, action: #selector(clear(_:)), for: .touchUpInside)

    }
    
    @objc func tap( _ sender: UIButton){
        viewModel?.tap(label: numberLabel)
    }
    
    @objc func clear( _ sender: UIButton){
        viewModel?.clear(label: numberLabel)
    }
}

