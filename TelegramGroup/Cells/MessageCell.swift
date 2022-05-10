//
//  ChatCell.swift
//  TelegramGroup
//
//  Created by Otikaxon Sobirova on 09/05/22.
//

import UIKit

class MessageCell: UICollectionViewCell {
    
    static let identifier = "MessageCell"
    
    let image = UIImageView()
    let name = UILabel()
    let text = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
        
        
        self.addSubview(image)
        image.image = #imageLiteral(resourceName: "messege")
        image.layer.cornerRadius = 30
        image.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview().inset(5)
            make.height.width.equalTo(60)
            
        }
        
        self.addSubview(name)
        name.text = ""
        name.textColor = .black
        name.font = .systemFont(ofSize: 16)
        name.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(3)
            make.leading.equalTo(image.snp.leading).offset(70)
            make.height.equalTo(30)
        }
        
        self.addSubview(text)
        text.text = ""
        text.textColor = .black
        text.textAlignment = .left
        text.numberOfLines = 0
        text.font = .systemFont(ofSize: 12)
        text.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(3)
            make.leading.equalTo(image.snp.leading).offset(70)
            make.height.equalTo(15)
            
        }
            
        let lineView = UIView()
        self.addSubview(lineView)
        lineView.backgroundColor = .black
        lineView.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(5)
            make.leading.equalToSuperview().inset(65)
            make.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        
    }
}


