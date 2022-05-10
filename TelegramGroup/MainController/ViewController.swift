//
//  ViewController.swift
//  TelegramGroup
//
//  Created by humoyun on 07/05/22.
//

import UIKit
import SnapKit
import Firebase

class ViewController: UIViewController {
    
    let telegramLabel = UILabel()
    let textLabel = UILabel()
    let imageView = UIImageView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        view.backgroundColor = #colorLiteral(red: 0.07903591543, green: 0.1308277845, blue: 0.1724506617, alpha: 1)
    }
    
    func initViews() {
        
        let button = UIButton()
        view.addSubview(button)
        button.setTitle("Next", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2391259372, green: 0.6757647991, blue: 0.9736604095, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .semibold)
        button.addTarget(self, action: #selector(fireBase), for: .touchUpInside)
        button.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-50)
            make.left.right.equalToSuperview().inset(40)
            make.height.equalTo(55)
        }
        
        view.addSubview(imageView)
        view.addSubview(telegramLabel)
        view.addSubview(textLabel)
        
        telegramLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        telegramLabel.text = "Telegram"
        telegramLabel.textColor = .white
        telegramLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(textLabel.snp.top).offset(-5)
            
        }
        
        textLabel.text = "The world's fastest messaging app.It is free and secure."
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.font = .systemFont(ofSize: 22, weight: .regular)
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 2
        textLabel.textColor = #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1)
        textLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(42)
            make.centerY.equalTo(view.snp.centerY)
            
        }
        
        imageView.image = UIImage(named: "telegram-3")
        imageView.snp.makeConstraints { make in
            make.bottom.equalTo(telegramLabel.snp.top).offset(-5)
            make.height.width.equalTo(190)
            make.centerX.equalToSuperview()
        }
        
        
        
        
        
        
        
    }
    @objc func fireBase() {
        
        let vc = FireBaseController()
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true,completion: nil)
        
    }
}
