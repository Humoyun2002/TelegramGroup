//
//  MessegeViewController.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit
import SnapKit

class MessegeViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {
        let  layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.sectionHeadersPinToVisibleBounds = true
        
        let cv = UICollectionView(frame: .zero,collectionViewLayout: layout)
        cv.delegate = self
        cv.dataSource = self
        view.addSubview(cv)
        
        return  collectionView
        
        
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initView()
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
   
     private func initView() {
         
        
    
  }

}

extension MessegeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 18
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatCell", for: indexPath) as! ChatCell
        cell.backgroundColor = .white
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 85)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "HeaderView", for: indexPath) as! HeaderView
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    
    
}

    


