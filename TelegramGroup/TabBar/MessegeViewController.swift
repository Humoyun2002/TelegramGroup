//
//  MessegeViewController.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//


import UIKit
import SnapKit

class MessegeViewController: UIViewController {
    
    let dataMassage = DataMessage()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
         collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(MassageCell.self, forCellWithReuseIdentifier: MassageCell.identifier)
        
        return collectionView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initView()
    }
    
    func initView() {
        
        view.self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        let ulanishLabel = UILabel()
        view.addSubview(ulanishLabel)
        ulanishLabel.text = "ulanmoqda"
        ulanishLabel.textColor = .black
        ulanishLabel.font = .systemFont(ofSize: 30)
        ulanishLabel.textAlignment = .center
        ulanishLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
            make.leading.trailing.equalToSuperview().inset(100)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        let deleteButton = UIButton()
        view.addSubview(deleteButton)
        deleteButton.setTitle("Изм.", for: .normal)
        deleteButton.setTitleColor(.blue, for: .normal)
        deleteButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(7)
            make.leading.equalToSuperview().inset(20)
            make.height.width.equalTo(50)
        }
        let tahrirlashButton = UIButton()
        view.addSubview(tahrirlashButton)
        tahrirlashButton.setImage(UIImage(named: "edit")?.withTintColor(.blue), for: .normal)
        tahrirlashButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(7)
            make.trailing.equalToSuperview().inset(20)
            make.height.width.equalTo(50)
        }

        let searchBar = UISearchBar()
        view.addSubview(searchBar)
        searchBar.placeholder = "Qidiruv"
        searchBar.backgroundColor = .white
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(ulanishLabel.snp.top).offset(60)
            make.leading.trailing.equalToSuperview().inset(10)
            make.height.equalTo(60)
        }
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(700)
            make.width.equalTo(700)

}
        let seperatorView = UIView()
        view.addSubview(seperatorView)
        seperatorView.backgroundColor = .black
        seperatorView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(5)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        }
    @objc func izmenit() {
        
    }
        
    }
extension MessegeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataMassage.data.count
        
    }
    
    
     
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 10, height: 60)
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MassageCell.identifier, for: indexPath) as! MassageCell
        cell.profileImage.image = UIImage(named: dataMassage.data[indexPath.item].imageFoto)
        cell.profileName.text = dataMassage.data[indexPath.item].name
        cell.profiletext.text = dataMassage.data[indexPath.item].vaqti
        return cell
    }
    
    
    
}
