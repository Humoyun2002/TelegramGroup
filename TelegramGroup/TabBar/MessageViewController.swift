//
//  MessegeViewController.swift
//  TelegramGroup
//
//  Created by Otikaxon Sobirova on 09/05/22.



import UIKit
import SnapKit

class MessageViewController: UIViewController {
   
    let model = MessageModel()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.delegate = self
        cv.dataSource = self
        cv.showsHorizontalScrollIndicator = false
        cv.register(MessageCell.self, forCellWithReuseIdentifier: MessageCell.identifier)
        
        return cv
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initView()
    }
    
    func initView() {
        
        view.self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        let connectLabel = UILabel()
        view.addSubview(connectLabel)
        connectLabel.text = "connecting"
        connectLabel.textColor = .black
        connectLabel.font = .systemFont(ofSize: 30)
        connectLabel.textAlignment = .center
        connectLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
            make.leading.trailing.equalToSuperview().inset(100)
            make.height.equalTo(60)
            make.width.equalTo(60)
        }
        let deletButton = UIButton()
        view.addSubview(deletButton)
        deletButton.setTitle("delet", for: .normal)
        deletButton.setTitleColor(.blue, for: .normal)
        deletButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(7)
            make.leading.equalToSuperview().inset(20)
            make.height.width.equalTo(50)
        }
        let editButton = UIButton()
        view.addSubview(editButton)
        editButton.setImage(UIImage(named: "edit")?.withTintColor(.blue), for: .normal)
        editButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(7)
            make.trailing.equalToSuperview().inset(20)
            make.height.width.equalTo(50)
        }
        
        let searchBar = UISearchBar()
        view.addSubview(searchBar)
        searchBar.placeholder = "Search"
        searchBar.backgroundColor = .white
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(connectLabel.snp.top).offset(60)
            make.leading.trailing.equalToSuperview().inset(10)
            make.height.equalTo(60)
        }
        
        let seperatorView = UIView()
        view.addSubview(seperatorView)
        seperatorView.backgroundColor = .black
        seperatorView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(5)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        view.addSubview(collectionView)
        collectionView.backgroundColor = .white
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(seperatorView.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.width.equalTo(700)
            
            
        }
    }
    
    
}
extension MessageViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return model.data.count
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 10, height: 60)
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MessageCell.identifier, for: indexPath) as! MessageCell
        cell.image.image = UIImage(named: model.data[indexPath.item].image)
        cell.name.text = model.data[indexPath.item].name
        cell.text.text = model.data[indexPath.item].commit
        
        
        return cell
    }
    
    
  
    
    
    
}
