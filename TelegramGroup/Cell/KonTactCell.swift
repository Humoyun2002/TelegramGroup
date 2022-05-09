//
//  KonTactCell.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit

class KontactCell: UICollectionViewCell {
   
    static let identifier = "KontactCell"
 
    let nameLabel = UILabel()
    let timeLabel = UILabel()
    let seperatorView = UIView()
    let kontactButton = UIImageView()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      
         initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
     func initViews() {
          
          
         self.addSubview(kontactButton)
         kontactButton.image = UIImage(named: "messege")
         kontactButton.snp.makeConstraints { make in
             make.top.equalToSuperview().offset(5)
             make.leading.equalToSuperview()
             make.height.width.equalTo(50)
         }
         self.addSubview(nameLabel)
         nameLabel.text = "Name"
         nameLabel.textColor = .white
         nameLabel.font = .systemFont(ofSize: 15)
         nameLabel.snp.makeConstraints { make in
             make.top.equalToSuperview().offset(10)
             make.leading.equalTo(kontactButton.snp.leading).offset(60)
             make.height.equalTo(20)
             make.width.equalTo(100)
         }
        
         self.addSubview(timeLabel)
         timeLabel.text = "oxirgi faollik 2min "
         timeLabel.textColor = .white
         timeLabel.font = .systemFont(ofSize: 10)
         timeLabel.snp.makeConstraints { make in
             make.top.equalTo(nameLabel.snp.bottom).offset(5)
             make.leading.equalTo(kontactButton.snp.leading).offset(60)
             make.height.equalTo(10)
             make.width.equalTo(200)
         }
         self.addSubview(seperatorView)
         seperatorView.backgroundColor = .systemGray6
         seperatorView.snp.makeConstraints { make in
             make.top.equalTo(timeLabel.snp.bottom).offset(5)
             make.leading.equalToSuperview().inset(65)
             make.trailing.equalToSuperview()
             make.height.equalTo(1)
         }
     }
    
}
