//
//  RegisterTextField.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/14.
//

import UIKit

class RegisterTextField: UITextField {
    
    init(placeFolder: String) {
        super.init(frame: .zero)
        
        placeholder = placeFolder
        borderStyle = .roundedRect
        font = .systemFont(ofSize: 14)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
