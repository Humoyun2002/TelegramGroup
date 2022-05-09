//
//  ChatCell.swift
//  TelegramGroup
//
//  Created by Otikaxon Sobirova on 09/05/22.
//

import UIKit

class MassageCell: UICollectionViewCell {
   
    static let identifier = "MassageCell"
 
    let profileImage = UIImageView()
    let profileName = UILabel()
    let profiletext = UILabel()
    override init(frame: CGRect) {
      super.init(frame: frame)
      
         initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
     func initViews() {
       
          
         self.addSubview(profileImage)
         profileImage.image = UIImage(named: "messege")
         profileImage.layer.cornerRadius = 30
         profileImage.snp.makeConstraints { make in
             make.top.equalToSuperview()
             make.leading.equalToSuperview().inset(5)
             make.height.width.equalTo(60)
                
        }
        
         self.addSubview(profileName)
         profileName.text = "humoyun"
         profileName.textColor = .black
         profileName.font = .systemFont(ofSize: 20)
         profileName.snp.makeConstraints { make in
             make.top.equalToSuperview().offset(3)
             make.leading.equalTo(profileImage.snp.leading).offset(70)
             make.height.equalTo(30)
             make.width.equalTo(100)
         }
        
         self.addSubview(profiletext)
         profiletext.text = "dfbfudbfjdbfjdfdufbjdfbdjfbdjfbjdr"
         profiletext.textColor = .black
         profiletext.textAlignment = .left
         profiletext.numberOfLines = 0
         profiletext.font = .systemFont(ofSize: 15)
         profiletext.snp.makeConstraints { make in
             make.top.equalTo(profileName.snp.bottom).offset(3)
             make.leading.equalTo(profileImage.snp.leading).offset(70)
             make.height.equalTo(15)
             make.width.equalTo(250)
         }
         let seperatorView = UIView()
         self.addSubview(seperatorView)
         seperatorView.backgroundColor = .black
         seperatorView.snp.makeConstraints { make in
             make.top.equalTo(profileImage.snp.bottom).offset(5)
             make.leading.equalToSuperview().inset(65)
             make.trailing.equalToSuperview()
             make.height.equalTo(1)
         }
         
    }
}
