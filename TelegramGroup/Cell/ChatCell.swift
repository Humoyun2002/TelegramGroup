//
//  ChatCell.swift
//  TelegramGroup
//
//  Created by Otikaxon Sobirova on 09/05/22.
//

import UIKit
import SnapKit

class  ChatCell: UICollectionViewCell {
    
    let profilImage   = UIImageView()
    let nameLabel     = UILabel()
    let messagesLabel = UILabel()
    let clockLabel    = UILabel()
    let dotsButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
 }
    
    private func initViews() {
    self.addSubview(profilImage)
    profilImage.layer.cornerRadius = 30
    profilImage.clipsToBounds = true
    profilImage.image = #imageLiteral(resourceName: "instagram")
    profilImage.contentMode = .scaleAspectFit
    profilImage.snp.makeConstraints { make in
        make.centerY.equalTo(self.snp.centerY)
        make.left.equalTo(self.snp.left).inset(10)
        make.height.width.equalTo(60)
    }
    self.addSubview(nameLabel)
    nameLabel.text = "Welcome our project"
    nameLabel.textColor = .black
    nameLabel.font = .systemFont(ofSize: 24)
    nameLabel.backgroundColor = .clear
    nameLabel.snp.makeConstraints { make in
        make.left.equalTo(profilImage.snp.right).inset(-15)
        make.top.equalTo(self.snp.top).inset(10)
        make.height.equalTo(40)
    }
    self.addSubview(messagesLabel)
    messagesLabel.text = "Thank you so much"
    messagesLabel.font = .systemFont(ofSize: 18)
    messagesLabel.textColor = .black
    messagesLabel.snp.makeConstraints { make in
        make.left.equalTo(profilImage.snp.right).inset(-15)
        make.top.equalTo(nameLabel.snp.bottom).offset(-5)
        make.height.equalTo(30)

    }
        
        self.addSubview(dotsButton)
        dotsButton.setImage(UIImage(named: "dots"), for: .normal)
        dotsButton.backgroundColor = .white
//        dotsButton.addTarget(self, action: #selector(jumping), for: .touchUpInside)
        dotsButton.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(10)
        }
    
    
   }
required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    



//     @objc func jumping () {
//        let vc = JumpingController()
//        vc.modalPresentationStyle = .fullScreen
//        present(vc,animated: true,completion: nil)
//        
//    }
    
}


