//
//  UIButton-Extension.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/14.
//

import UIKit

extension UIButton {
    
    func createCardInfoButton() -> UIButton {
        self.setImage(UIImage(systemName: "info.circle.fill")?.resize(size: .init(width: 40, height: 40)), for: .normal)
        self.tintColor = .white
        self.imageView?.contentMode = .scaleAspectFit
        return self
    }
    
}
