//
//  HomeViewController.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit
import SnapKit

 class KontactViewController: UIViewController {
     let model = DataModel()

    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
         collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(KontactCell.self, forCellWithReuseIdentifier: KontactCell.identifier)
        
        return collectionView
        
    }()
     

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView() {
        

    let searchBar = UISearchBar()
    view.addSubview(searchBar)
    searchBar.placeholder = "Qidiruv"
    searchBar.backgroundColor = .white
    searchBar.snp.makeConstraints { make in
        make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
        make.leading.equalToSuperview()
        make.trailing.equalToSuperview().inset(60)
        make.height.equalTo(60)
    }
        let tahrirlashButton = UIButton()
        view.addSubview(tahrirlashButton)
        tahrirlashButton.setImage(UIImage(named: "edit")?.withTintColor(.blue), for: .normal)

        tahrirlashButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(5)
            make.leading.equalTo(searchBar.snp.trailing)
            make.height.width.equalTo(50)
        }
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(700)
            make.width.equalTo(10)

        }
    }
}
extension KontactViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.data.count
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width - 10, height: 60)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KontactCell.identifier, for: indexPath) as! KontactCell
        cell.backgroundColor = .white
        cell.nameLabel.text = model.data[indexPath.item].name
        cell.timeLabel.text = model.data[indexPath.item].vaqti
cell.kontactButton.image = UIImage(named: model.data[indexPath.item].imageFoto)
        return cell
    }
    
    
    
}



