//
//  TopControlView.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/14.
//

import UIKit
import RxCocoa
import RxSwift

class TopControlView: UIView {
    
    private let disposeBag = DisposeBag()
    
    let tinderButtton = createTopButton(imageName: "tinder-selected", unselectedImage: "tinder-unselected")
    let goodButton = createTopButton(imageName: "good-selected", unselectedImage: "good-unselected")
    let commentButton = createTopButton(imageName: "comment-selected", unselectedImage: "comment-unselected")
    let profileButton = createTopButton(imageName: "profile-selected", unselectedImage: "profile-unselected")
    
    static private func createTopButton(imageName: String, unselectedImage: String) -> UIButton {
        let button = UIButton()
        button.setImage(UIImage(named: imageName), for: .selected)
        button.setImage(UIImage(named: unselectedImage), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
        setupBindings()
    }
    
    private func setupLayout() {
        let baseStackView = UIStackView(arrangedSubviews: [tinderButtton, goodButton, commentButton, profileButton])
        baseStackView.axis = .horizontal
        baseStackView.distribution = .fillEqually
        baseStackView.spacing = 43
        baseStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(baseStackView)
        
        [baseStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
         baseStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
         baseStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 40),
         baseStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -40)
        ].forEach { $0.isActive = true }
        
        tinderButtton.isSelected = true
    }
    
    private func setupBindings() {
        
        tinderButtton.rx.tap
            .subscribe { _ in
                self.handleSelectedButton(selectedButton: self.tinderButtton)
            }
            .disposed(by: disposeBag)
        
        goodButton.rx.tap
            .subscribe { _ in
                self.handleSelectedButton(selectedButton: self.goodButton)
            }
            .disposed(by: disposeBag)
        
        commentButton.rx.tap
            .subscribe { _ in
                self.handleSelectedButton(selectedButton: self.commentButton)
            }
            .disposed(by: disposeBag)
        
        profileButton.rx.tap
            .subscribe { _ in
                self.handleSelectedButton(selectedButton: self.profileButton)
            }
            .disposed(by: disposeBag)
        
    }
    
    private func handleSelectedButton(selectedButton: UIButton) {
        let buttons = [tinderButtton, goodButton, commentButton, profileButton]
        
        buttons.forEach { button in
            if button == selectedButton {
                button.isSelected = true
            } else {
                button.isSelected = false
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
