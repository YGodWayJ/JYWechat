//
//  CommonDefine.swift
//  Wechat
//
//  Created by jiangzhibin on 15/12/30.
//  Copyright © 2015年 YGodWayJ. All rights reserved.
//

import Foundation
import UIKit

//-----------------------------------常规控件---------------------------------------------
let kScreenHeight     =   UIScreen.mainScreen().bounds.size.height
let kScreenWidth      =   UIScreen.mainScreen().bounds.size.width
let kScreenRect       =   CGRectMake(0, 0, kScreenWidth, kScreenHeight)
let kScreenScaleTo6   =   (kScreenWidth/375.0)   // 当前屏幕对应iPhone6比例
func SizeTo6(num: CGFloat) -> CGFloat { return kScreenScaleTo6 / num }
let kStatusBarHeight  =   UIApplication.sharedApplication().statusBarFrame.size.height// 状态栏高

let kNavBarHeight           =   44
let kNavBarShadowHeight     =   6
let kNavBarButtonHeight     =   30
let kNavBarButtonWidth      =   30
let kTabBarHeight           =   49
let kDefaultCellHeight      =   44      // 默认cell高度
let kSearchBarHeight        =   44      // 搜索栏高度

//-----------------------------------UserDefaults------------------------------------
let UserDefaults_ShowedWelcomePage          =   "userDefaults_ShowedWelcomePage"

//-----------------------------------NSNotification---------------------------------
let Notif_ApplicationDidEnterBackground     =   "applicationDidEnterBackground"
let Notif_ApplicationWillEnterForeground    =   "applicationWillEnterForeground"

//-----------------------------------其他---------------------------------
#if DEBUG
    func dLog(@autoclosure message:  () -> String, filename: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {
        
        NSLog("[\(filename.stringByAppendingPathComponent):\(line)] \(function) – %@", message())
    }
#else
    func dLog(@autoclosure message:  () -> String, filename: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {   
    }
    
#endif
func WeakSelf(let obj: AnyObject) -> AnyObject {
    weak var weakObj = obj
    return weakObj!
}
let RequestTimeOut                  =   20  //网络请求超时时间

let Color_DarkGrayText   =  UIColor.colorWithRGBA("rgba(95, 97, 101, 1.00)")// 深灰色文本颜色
let Color_LightGrayText  =  UIColor.colorWithHexString("808080") // 浅灰色文本颜色
let Color_LightGrayText2 =  UIColor.colorWithRGBA("rgba(95, 97, 101, 1.00)") // 浅灰色文本颜色
let Color_Purple         =  UIColor.colorWithRGBA("rgba(126, 86, 220, 1.00)")// 紫色文本颜色
public func RGB(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
    return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
}
public func RGBA(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
    return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
}

let Color_TextYellow        =   UIColor.colorWithHexString("f9c349")        // 文字黄
let Color_TextGreen         =   UIColor.colorWithHexString("88d016")        // 文字绿
let Color_TextBlue          =   UIColor.colorWithHexString("2fa8ff")        // 文字蓝
let Color_GrayBig           =   UIColor.colorWithHexString("6f6f6f")        // 大号字体灰
let Color_GrayLittle        =   UIColor.colorWithHexString("8c8d8f")        // 小号字体灰
let Color_EmptyPageText     =   UIColor.colorWithHexString("94b3c8")        // 空白页文字颜色

//------------------------------------系统---------------------------------------------
let iOSVersionFloat = NSString(string: UIDevice.currentDevice().systemName).floatValue  // 获取系统版本
let IOS_VERSION_6_OR_LATER = ((UIDevice.currentDevice().systemName as NSString).floatValue >= 6.0) ? true:false
let IOS_VERSION_7_OR_LATER = ((UIDevice.currentDevice().systemName as NSString).floatValue >= 7.0) ? true:false
let IOS_VERSION_8_OR_LATER = ((UIDevice.currentDevice().systemName as NSString).floatValue >= 8.0) ? true:false
let IOS_VERSION_9_OR_LATER = ((UIDevice.currentDevice().systemName as NSString).floatValue >= 9.0) ? true:false
// 判断设备
let iPhone4 = UIScreen.instancesRespondToSelector(Selector("currentMode")) ? CGSizeEqualToSize(CGSizeMake(640, 960), (UIScreen.mainScreen().currentMode?.size)!) : false
let iPhone5 = UIScreen.instancesRespondToSelector(Selector("currentMode")) ? CGSizeEqualToSize(CGSizeMake(640, 1136), (UIScreen.mainScreen().currentMode?.size)!) : false
let iPhone6 = UIScreen.instancesRespondToSelector(Selector("currentMode")) ? CGSizeEqualToSize(CGSizeMake(750, 1334), (UIScreen.mainScreen().currentMode?.size)!) : false
let iPhone6p = UIScreen.instancesRespondToSelector(Selector("currentMode")) ? CGSizeEqualToSize(CGSizeMake(1242, 2208), (UIScreen.mainScreen().currentMode?.size)!) : false

let iPad = UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Pad
let Simulator  = TARGET_IPHONE_SIMULATOR
