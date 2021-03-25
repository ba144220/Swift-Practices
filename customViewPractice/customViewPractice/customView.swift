//
//  customView.swift
//  customViewPractice
//
//  Created by Yu Chi Hsu on 2021/3/25.
//

import UIKit

class CustomView: UIView {
    @IBOutlet weak var infoLabel: UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
    }
    
    func commonInit(){
        let viewFromXib = Bundle.main.loadNibNamed("customView", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
}
