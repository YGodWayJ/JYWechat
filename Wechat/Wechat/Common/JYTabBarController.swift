//
//  JYTabBarController.swift
//  Wechat
//
//  Created by jiangzhibin on 15/12/30.
//  Copyright © 2015年 YGodWayJ. All rights reserved.
//

import UIKit
import SnapKit

enum TabBarButtonType: Int {
    case WeChat = 0, Contacts, Discover, User
}

class JYTabBarController: UITabBarController {
    private var tabBarBGView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.hidden = true
        let weakSelf = WeakSelf(self) as! JYTabBarController

        self.tabBarBGView = UIImageView()
        self.tabBarBGView.image = UIImage(named: "tabbarBkg")
        self.view.addSubview(self.tabBarBGView)
        self.tabBarBGView.snp_makeConstraints { (make) -> Void in
            make.width.centerX.bottom.equalTo(weakSelf.view)
            make.height.equalTo(kTabBarHeight)
        }
        
        
    }
    
    private func onClick(let btn: UIButton) {
        
    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
