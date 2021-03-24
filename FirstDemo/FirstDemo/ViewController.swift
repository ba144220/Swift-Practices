//
//  ViewController.swift
//  FirstDemo
//
//  Created by Yu Chi Hsu on 2021/3/17.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle( "This is a button", for: .normal)
        button.isUserInteractionEnabled = true
        button.setTitleColor(.brown, for: .normal)
        button.tintColor = .cyan
        
        return button
    } ()

    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "did load!"
        titleLabel.backgroundColor = .blue
        
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            
            button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
        ])
        
        button.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
        
        
    }
    
    @objc func tapButton(_ sender: UIButton) {
        titleLabel.text = String(Int.random(in: 1...10))
    }


}

