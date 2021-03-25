//
//  customInputBox.swift
//  customView2
//
//  Created by Yu Chi Hsu on 2021/3/25.
//

import UIKit

class CustomInputBox: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    

    @IBOutlet weak var inputBox: UITextField!
    @IBOutlet weak var bottomLine: UIView!
    

    

    override init(frame: CGRect){
        super.init(frame: frame)
        commonInit()
        
        
    }
    required init?(coder: NSCoder){
        super.init(coder: coder)
    }
    func commonInit(){
        let viewFromXib = Bundle.main.loadNibNamed("customInputBox", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
 
    
}
