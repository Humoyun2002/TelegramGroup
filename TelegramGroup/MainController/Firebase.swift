//
//  Firebase.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit
import Firebase

class  FireBaseController: UIViewController {
    var verificationID: String = ""
    let cancelButton  = UIButton()
    let phoneLabel    = UILabel()
    let bottomLabel   = UILabel()
    let lineView      = UIImageView()
    let numberView    = UIImageView()
    let countryButton = UIButton()
    let numberButton  = UIButton()
    let fieldView     = UIImageView()
    let textField     = UITextField()
    let nextButton    = UIButton()
    let quickButton   = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        view.backgroundColor = #colorLiteral(red: 0.07903591543, green: 0.1308277845, blue: 0.1724506617, alpha: 1)
    }
    
    
    func initViews() {
        view.addSubview(numberView)
        numberView.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        numberView.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(35)
            make.height.equalTo(1)
            make.width.equalTo(75)
            make.centerY.equalTo(view.snp.centerY)
        }
        
        view.addSubview(phoneLabel)
        phoneLabel.text = "Your Phone Number"
        phoneLabel.textColor = .white
        phoneLabel.font = .systemFont(ofSize: 22, weight: .bold)
        phoneLabel.snp.makeConstraints { make in
            make.bottom.equalTo(numberView.snp.top).inset(-200)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(bottomLabel)
        bottomLabel.text = "Please confirm your country code and enter your phone number."
        bottomLabel.textColor = .white
        bottomLabel.numberOfLines = 0
        bottomLabel.adjustsFontSizeToFitWidth = true
        bottomLabel.textAlignment = .center
        bottomLabel.textColor = #colorLiteral(red: 0.3964280486, green: 0.4930617213, blue: 0.5766225457, alpha: 1)
        bottomLabel.font = .systemFont(ofSize: 15, weight: .semibold)
        bottomLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneLabel.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(33)
        }
        
        
        view.addSubview(lineView)
        lineView.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        lineView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(35)
            make.height.equalTo(1)
            make.bottom.equalTo(numberView.snp.top).inset(-60)
        }
        
        view.addSubview(countryButton)
        countryButton.setTitle("Uzbekistan", for: .normal)
        countryButton.setTitleColor(.white, for: .normal)
        countryButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        countryButton.snp.makeConstraints { make in
            make.left.equalTo(lineView)
            make.bottom.equalTo(lineView.snp.top).inset(-4)
        }
        
        view.addSubview(numberButton)
        numberButton.setTitle("+998", for: .normal)
        numberButton.setTitleColor(.white, for: .normal)
        numberButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .regular)
        numberButton.snp.makeConstraints { make in
            make.bottom.equalTo(numberView.snp.top).inset(-4)
            make.left.equalTo(numberView.snp.left)
            make.centerX.equalTo(numberView.snp.centerX)
        }
        
        view.addSubview(fieldView)
        fieldView.backgroundColor = #colorLiteral(red: 0.3318586946, green: 0.6107192039, blue: 0.8390015364, alpha: 1)
        fieldView.snp.makeConstraints { make in
            make.centerY.equalTo(view.snp.centerY)
            make.left.equalTo(numberView.snp.right).offset(20)
            make.height.equalTo(2)
            make.right.equalTo(lineView.snp.right)
        }
        
        view.addSubview(textField)
        textField.textAlignment = .left
        textField.placeholder = "-- --- -- --"
        textField.textColor = .white
        textField.snp.makeConstraints { make in
            make.bottom.equalTo(fieldView.snp.top).inset(1)
            make.left.right.equalTo(fieldView)
            make.height.equalTo(50)
            make.width.equalTo(fieldView)
            
        }
        
        view.addSubview(nextButton)
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        nextButton.setTitleColor(.white, for: .normal)
        nextButton.backgroundColor = #colorLiteral(red: 0, green: 0.4383094311, blue: 0.6654196382, alpha: 1)
        nextButton.layer.cornerRadius = 8
        nextButton.addTarget(self, action: #selector(sendSms), for: .touchUpInside)
        nextButton.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.left.right.equalTo(lineView)
            make.top.equalTo(numberView.snp.bottom).offset(50)
        }
        
        view.addSubview(quickButton)
        quickButton.setTitleColor(#colorLiteral(red: 0.3056927919, green: 0.7189202905, blue: 0.9837145209, alpha: 1), for: .normal)
        quickButton.setTitle("Quick log in using QR code", for: .normal)
        quickButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .semibold)
        quickButton.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(nextButton.snp.bottom).offset(50)
            make.left.right.equalTo(nextButton)
        }
        
        
        
        
    }
    @objc func dismissController() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func sendSms() {
        
        guard let phoneNumber = textField.text  else { return }
        PhoneAuthProvider.provider()
            .verifyPhoneNumber("+998\(phoneNumber)", uiDelegate: nil) { verificationID, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                    
                }
                guard let id = verificationID else { return }
                let vc = CodeVerificationVC()
                vc.verificationID = id
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
            }
    }
}
