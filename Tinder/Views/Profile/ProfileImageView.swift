//
//  ProfileImageView.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/19.
//

import UIKit

class ProfileImageView: UIImageView {
    
    init() {
        super.init(frame: .zero)
        
        self.image = UIImage(named: "no-image")
        self.contentMode = .scaleAspectFill
        self.layer.cornerRadius = 40
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
