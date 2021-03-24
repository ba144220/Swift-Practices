//
//  Model.swift
//  tapOrPressCounter
//
//  Created by Yu Chi Hsu on 2021/3/24.
//

import Foundation


class Model {
    private var value: Int
    
    init() {
        value = 0
    }
    
    public func getValue() -> Int{
        return value
    }
    
    public func setValue(newValue: Int) -> Void{
        value = newValue
    }
}

