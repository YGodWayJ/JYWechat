//
//  UIColor_Extension.swift
//  translation
//
//  Created by Mr.Jiang on 15/12/23.
//  Copyright © 2015年 JiangBingbing. All rights reserved.
//

import UIKit
public extension UIColor {
    
    /**
    *  根据6位16进制hex值获得颜色
    *
    *  @param hex 6位16进制hex值
    *
    *  @return color
    */
    public class func colorWithHexString(hex: String) -> UIColor {
        return self.colorWithHexString(hex, alpha: 1)
    }
    
    /**
    *  根据6位16进制hex值、透明度获得颜色
    *
    *  @param hex 6位16进制hex值
    *  @param alpha 透明度
    *
    *  @return color
    */
    public class func colorWithHexString(hex: String, alpha: CGFloat) -> UIColor {
        var cString = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        // String should be 6 or 8 characters
        if cString.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 6 {
            return UIColor.grayColor()
        }
        
        // strip 0X if it appears
        if cString.hasPrefix("0X") {
            let startIndex = cString.startIndex.advancedBy(2)
            cString = cString.substringFromIndex(startIndex)
        }
        if cString.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) != 6 {
            return UIColor.grayColor()
        }
        
        
        var range = cString.startIndex ..< cString.startIndex.advancedBy(2)
        let rString = cString.substringWithRange(range)
        
        range = cString.startIndex.advancedBy(2) ..< cString.startIndex.advancedBy(4)
        let gString = cString.substringWithRange(range)
        
        range = cString.startIndex.advancedBy(4) ..< cString.startIndex.advancedBy(6)
        let bString = cString.substringWithRange(range)
        
        var r: UInt32 = 0
        var g: UInt32 = 0
        var b: UInt32 = 0
        
        let rScanner = NSScanner(string: rString)
        let gScanner = NSScanner(string: gString)
        let bScanner = NSScanner(string: bString)
        
        rScanner.scanHexInt(&r)
        gScanner.scanHexInt(&g)
        bScanner.scanHexInt(&b)
        
        return UIColor(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: alpha)
    }
    
    
    /**
    *  根据RGBA获得UIColor
    *
    *  @param rgbaString rgba(66,61,61,1)
    *
    *  @return color
    */
    public class func colorWithRGBA(rgbaString: String) -> UIColor {
        var rgbaStr = rgbaString
        rgbaStr = rgbaStr.stringByReplacingOccurrencesOfString("rgba(", withString: "")
        rgbaStr = rgbaStr.stringByReplacingOccurrencesOfString(")", withString: "")
        let rgbaStrValues: [String] = rgbaStr.componentsSeparatedByString(",")
        
        var color: UIColor!
        if (rgbaStrValues.count >= 3) {
            let red = CGFloat(NSString(string: rgbaStrValues[0]).floatValue / 255)
            let green = CGFloat(NSString(string: rgbaStrValues[1]).floatValue / 255)
            let blue = CGFloat(NSString(string: rgbaStrValues[2]).floatValue / 255)
            
            if (rgbaStrValues.count == 4) {
                let alpha = CGFloat(NSString(string: rgbaStrValues[3]).floatValue)
                color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
            } else {
                color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            }
        }
        return color;
    }
    
    /**
    *  随机颜色
    *
    *  @return randomColor
    */
    public class func randomColor() -> UIColor {
        let hue = ( CGFloat(arc4random() % 256) / 256.0)
        //  0.5 to 1.0, away from white
        let saturation = ( CGFloat(arc4random() % 128) / 256.0) + 0.5
        //  0.5 to 1.0, away from black
        let brightness = ( CGFloat(arc4random() % 128) / 256.0) + 0.5
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
    
}
