//
//  CircleImage.swift
//  MVVM Example project
//
//  Created by Stanly Shiyanovskiy on 12.02.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(red: SHADOW_GREY, green: SHADOW_GREY, blue: SHADOW_GREY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        clipsToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.width / 2
    }
}
