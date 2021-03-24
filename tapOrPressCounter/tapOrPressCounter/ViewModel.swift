//
//  ViewModel.swift
//  tapOrPressCounter
//
//  Created by Yu Chi Hsu on 2021/3/24.
//

import Foundation
import UIKit



class ViewModel: NSObject {
    
    private var numberModel: Model
    
    override init() {
        
        numberModel = Model()
    }
    
    public func tap(label: UILabel) -> Void{
        // Add the number in Model
        numberModel.setValue(newValue: numberModel.getValue()+1)
        label.text = String(numberModel.getValue())
    }
    
    public func clear(label: UILabel) -> Void{
        numberModel.setValue(newValue: 0)
        label.text = String(numberModel.getValue())
    }
}
