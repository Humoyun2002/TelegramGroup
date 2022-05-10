//
//  SettingViewController.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit
import SnapKit

class SettingViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   let settingModel = SettingsDataModel()
    let photonames = UIImage(named:"profil")
    let profileView = UIView()
    let profilePhoto = UIImageView()
    let editButton = UILabel()
    let QRCodeButton = UIImageView()
    let username = UILabel()
    let phoneNumber = UILabel()
    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(profileView)
        profileView.backgroundColor = .white
        profileView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.centerY).multipliedBy(0.1)
            make.width.equalToSuperview().inset(20)
            make.height.equalToSuperview().multipliedBy(0.3)
            make.centerX.equalToSuperview()
          
        }
        
        profileView.addSubview(profilePhoto)
        profilePhoto.image = UIImage(named: "profil")
        profilePhoto.snp.makeConstraints { make in
            make.top.equalTo(profileView.center).offset(70)
            make.left.equalTo(profileView.center).offset(150)
            make.width.height.equalTo(100)
        }
        profileView.addSubview(username)
        username.text = "Username"
        username.snp.makeConstraints { make in
            make.centerY.equalTo(profilePhoto.snp.centerY).offset(80)
            make.centerX.equalTo(profilePhoto.snp.centerX)
           
        }
        profileView.addSubview(phoneNumber)
        phoneNumber.text = "+123456789"
        phoneNumber.snp.makeConstraints { make in
            make.left.equalTo(username.snp.left).offset(-20)
            make.top.equalTo(username.snp.bottom).offset(15)
            
        }
        profileView.addSubview(editButton)
        editButton.text = "Edit"
        editButton.textColor = .blue
        editButton.snp.makeConstraints { make in
            make.top.equalTo(profileView.snp.top).offset(10)
            make.right.equalTo(profileView.snp.right).offset(-10)
        }
        profileView.addSubview(QRCodeButton)
        QRCodeButton.image = UIImage(named: "QRCode")
        
        QRCodeButton.snp.makeConstraints { make in
            make.left.equalTo(profileView.snp.left).offset(10)
            make.top.equalTo(profileView.snp.top).offset(10)
            make.width.height.equalTo(20)
        }
            
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(profileView.snp.bottom).offset(10)
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
            make.centerX.equalToSuperview()

        }

       
      
        
    }
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//
//        tableView.frame = view.bounds
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingModel.SettingData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:  "cell", for: indexPath)
        cell.textLabel?.text = settingModel.SettingData[indexPath.item].nameSetting
        cell.imageView?.image = UIImage(named: settingModel.SettingData[indexPath.item].imageSetting)
        cell.imageView?.tintColor = .systemGreen
        cell.imageView?.snp.makeConstraints({ make in
            make.width.height.equalTo(40)
            make.left.equalToSuperview().offset(20)
        })
        return cell
    }
    
   
    
}

