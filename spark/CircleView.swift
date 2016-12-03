//
//  CircleView.swift
//  spark
//
//  Created by Ricky Maisuria on 03/12/2016.
//  Copyright © 2016 Ricky Maisuria. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(red: SHADOW_GREY, green: SHADOW_GREY, blue: SHADOW_GREY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = self.frame.width / 2
    }
    
}
