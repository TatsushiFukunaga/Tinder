//
//  RegisterViewController.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/14.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private let nameTextField = RegisterTextField(placeFolder: "名前")
    private let emailTextField = RegisterTextField(placeFolder: "email")
    private let passwordTextField = RegisterTextField(placeFolder: "password")
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("登録", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        let baseStackView = UIStackView(arrangedSubviews: [nameTextField, emailTextField, passwordTextField, registerButton])
        baseStackView.axis = .vertical
        baseStackView.distribution = .fillEqually
        baseStackView.spacing = 20
        
        view.addSubview(baseStackView)
        
        nameTextField.anchor(height: 45)
        baseStackView.anchor(left: view.leftAnchor, right: view.rightAnchor, centerY: view.centerYAnchor, leftPadding: 40, rightPadding: 40)
    }
}
