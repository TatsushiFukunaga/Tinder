//
//  ProfileLabel.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/20.
//

import UIKit

class ProfileLabel: UILabel {
    
    init() {
        super.init(frame: .zero)
        
        self.font = .systemFont(ofSize: 45, weight: .bold)
        self.textColor = .black
    }
    
    // infoCollectionViewのtitleLabel
    init(title: String) {
        super.init(frame: .zero)
        
        self.text = title
        self.textColor = .darkGray
        self.font = .systemFont(ofSize: 14)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
