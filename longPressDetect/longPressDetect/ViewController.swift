//
//  ViewController.swift
//  longPressDetect
//
//  Created by Yu Chi Hsu on 2021/3/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var clearBtn: UIButton!
    
    var numModel: NumberModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        numModel = NumberModel(_label: numberLabel)
        
        addBtn.addTarget(self, action: #selector(pressStart), for: .touchDown)
        addBtn.addTarget(self, action: #selector(pressEnd), for: .touchUpInside)
        clearBtn.addTarget(self, action: #selector(clear), for: .touchUpInside)
    }
    
    @objc func pressStart(_ sender: UIButton){
        numModel.startPress()
    }
    @objc func pressEnd(_ sender: UIButton){
        numModel.endPress()
    }
    @objc func clear(_ sender: UIButton){
        numModel.clear()
    }
    

}


class NumberModel{
    
    private var value: Int
    private var pressed: Bool
    private var timer: Timer
    private var label: UILabel
    
    
    init(_label: UILabel) {
        
        value = 0
        pressed = false
        timer = Timer()
        label = _label

    }
    
    @objc func addValue(){
        if pressed{
            value += 1
        }
        label.text = String( value )
    }
    
    public func startPress(){
        pressed = true
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(addValue), userInfo: nil, repeats: true)
        value += 1
        label.text = String(value)
    }
    public func endPress(){
        pressed = false
        timer.invalidate()
    }
    
    public func clear(){
        value = 0
        label.text = "0"
    }
    
}
