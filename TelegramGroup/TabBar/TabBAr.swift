//
//  TabBAr.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit
import SnapKit
 
class telegramVC: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        
    }
    func initView() {
        view.backgroundColor = .white
        tabBar.backgroundColor = #colorLiteral(red: 0.1058823541, green: 0.1058823541, blue: 0.1058823541, alpha: 1)
        tabBar.barTintColor = .white
        tabBar.tintColor = .blue
        let homeVC = HomeViewController()
        
        let home = UITabBarItem(title: "bosh sahifa", image: #imageLiteral(resourceName: "user "),selectedImage: #imageLiteral(resourceName: "user ") )
        
        homeVC.tabBarItem = home
      
        let bookVC = MessegeViewController()
        let books = UITabBarItem(title: "messege", image: UIImage(named: "messege"), selectedImage: UIImage(named: "messege"))
       
        bookVC.tabBarItem = books
      
        let menuVC = SettingViewController()
        let menu = UITabBarItem(title: "setting", image: UIImage(named: "setting"), selectedImage: UIImage(named: "setting"))

        menuVC.tabBarItem = menu
        self.viewControllers = [homeVC, bookVC, menuVC]
     }
    
    }
    


