//
//  Codefile.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit
import SnapKit
import Firebase

class CodeVerificationVC: UIViewController {
    
    var verificationID: String = ""
    let codeTextField = UITextField()
    let agreeButton = UIButton ()
    
    let succesImage = UIImageView()
    let successText = UILabel ()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(succesImage)
        succesImage.image = UIImage(named: "success")
        succesImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
            make.top.equalToSuperview().offset(100)
        }
        view.addSubview(codeTextField)
        codeTextField.placeholder = " Code"
        codeTextField.textColor = .black
        codeTextField.layer.cornerRadius = 15
        codeTextField.layer.borderColor = UIColor.gray.cgColor
        codeTextField.layer.borderWidth = 2
        codeTextField.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.7)
            make.height.equalTo(50)
            make.center.equalToSuperview()
        }
        view.addSubview(agreeButton)
        agreeButton.addTarget(self, action: #selector(confirmCode), for: .touchUpInside)
        agreeButton.backgroundColor = #colorLiteral(red: 0.3672083616, green: 0.8099138141, blue: 0.9993231893, alpha: 1)
        agreeButton.layer.cornerRadius = 10
        agreeButton.setTitle("Next", for: .normal)
        agreeButton.addTarget(self, action: #selector(telegramView), for: .touchUpInside)
        agreeButton.snp.makeConstraints { make in
            make.top.equalTo(codeTextField.snp.bottom).offset(30)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.4)
        }
        
    }
    
   @objc private func confirmCode() {
       guard let code = codeTextField.text, !code.isEmpty else { return }

       let credential = PhoneAuthProvider.provider().credential(
         withVerificationID: verificationID,
         verificationCode: code
       )


       Auth.auth().signIn(with: credential) { authResult, error in
           if let error = error {
             let authError = error as NSError
             if authError.code == AuthErrorCode.secondFactorRequired.rawValue {
               // The user is a multi-factor user. Second factor challenge is required.
               let resolver = authError
                 .userInfo[AuthErrorUserInfoMultiFactorResolverKey] as! MultiFactorResolver
               var displayNameString = ""
               for tmpFactorInfo in resolver.hints {
                 displayNameString += tmpFactorInfo.displayName ?? ""
                 displayNameString += " "
               }
              print("Select factor to sign in\n\(displayNameString)")
             } else {
               print(error.localizedDescription)
               return
             }
             // ...
             return
           }
           
           
           print("Success in sign in")
            
           }
           
       }
       @objc func telegramView() {
           let vc = telegramVC()
           vc.modalPresentationStyle = .fullScreen
           present(vc, animated: true, completion: nil)
    }
}

