//
//  ProfileViewController.swift
//  Tinder
//
//  Created by Tatsushi Fukunaga on 2021/03/19.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var user: User?
    private let cellId = "cellId"
    
    // MARK: - UIViews
    let saveBytton = UIButton(type: .system).creatProfileTopButton(title: "保存")
    let logoutButton = UIButton(type: .system).creatProfileTopButton(title: "ログアウト")
    let profileImageView = ProfileImageView()
    let namelabel = ProfileLabel()
    let profileEditButton = UIButton(type: .system).createProfileEditButton()
    
    lazy var infoCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.delegate = self
        cv.dataSource = self
        cv.backgroundColor = .white
        cv.register(InfoCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        return cv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    private func setupLayout() {
        view.backgroundColor = .white
        namelabel.text = "test"
        
        // viewの配置を設定
        view.addSubview(saveBytton)
        view.addSubview(logoutButton)
        view.addSubview(profileImageView)
        view.addSubview(namelabel)
        view.addSubview(profileEditButton)
        view.addSubview(infoCollectionView)
        
        saveBytton.anchor(top: view.topAnchor, left: view.leftAnchor, topPadding: 20, leftPadding: 15)
        logoutButton.anchor(top: view.topAnchor, right: view.rightAnchor, topPadding: 20, rightPadding: 15)
        profileImageView.anchor(top: view.topAnchor, centerX: view.centerXAnchor, width: 180, height: 180, topPadding: 60)
        namelabel.anchor(top: profileImageView.bottomAnchor, centerX: view.centerXAnchor, topPadding: 20)
        profileEditButton.anchor(top: profileImageView.topAnchor, right: profileImageView.rightAnchor, width: 60, height: 60)
        infoCollectionView.anchor(top: namelabel.bottomAnchor, bottom: view.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, topPadding: 20)
        
        // user情報を反映
        namelabel.text = user?.name
    }
    
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = infoCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! InfoCollectionViewCell
        cell.user = self.user
        return cell
    }
    
}

