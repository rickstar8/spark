//
//  CircleView.swift
//  spark
//
//  Created by Ricky Maisuria on 03/12/2016.
//  Copyright © 2016 Ricky Maisuria. All rights reserved.
//

import UIKit

class CircleView: UIImageView {

    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    
}
