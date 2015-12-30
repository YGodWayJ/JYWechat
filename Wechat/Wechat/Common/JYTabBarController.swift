//
//  JYTabBarController.swift
//  Wechat
//
//  Created by jiangzhibin on 15/12/30.
//  Copyright © 2015年 YGodWayJ. All rights reserved.
//

import UIKit

class JYTabBarController: UITabBarController {
    private var tabBarBGView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.hidden = true
        
        self.tabBarBGView = UIImageView()
        self.tabBarBGView.image = UIImage(named: "tabbarBkg")
        
    }
}
