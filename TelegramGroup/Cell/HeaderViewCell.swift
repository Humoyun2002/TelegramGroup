//
//  HeaderViewCell.swift
//  TelegramGroup
//
//  Created by Otikaxon Sobirova on 09/05/22.
//

import UIKit
import  SnapKit

class HeaderViewCell:UICollectionViewCell{
    static let identifier = "HeaderViewCell"
    let titleLabel = UILabel()
    
    func setText(text: String) {
        titleLabel.text = text
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    private func initViews() {
        self.addSubview(titleLabel)
        titleLabel.text = "All Chats"
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
