//
//  Extensions.swift
//  MVVMWithTestCases
//
//  Created by Monica Deshwal on 05/02/24.
//

import Foundation
import UIKit
import SwiftUI

func hexStringToUIColor(hex: String) -> UIColor {
    
    var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if cString.hasPrefix("#") {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue: UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) > 16) / 255.0
        , green: CGFloat((rgbValue & 0xFF0000) > 16) / 255.0
        , blue: CGFloat((rgbValue & 0xFF0000) > 16) / 255.0
        , alpha: CGFloat(1.0))
}

