//
//  TagColorExtension.swift
//  GetContact
//
//  Created by Dariga Akhmetova on 3/14/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation
import UIKit

//Making connection between tags, UIColors and Strings
extension UIColor {
    var tag: TagColor {
        switch self {
        case UIColor.brown: return .brown
        case UIColor.blue: return .blue
        case UIColor.cyan: return .cyan
        case UIColor.green: return .green
        case UIColor.orange: return .orange
        case UIColor.red: return .red
        case UIColor.magenta: return .magenta
        case UIColor.purple: return .purple
        default: return .white
        }
    }
}

extension TagColor {
    var color: UIColor {
        switch self {
        case .brown: return UIColor.brown
        case .blue: return UIColor.blue
        case .cyan: return UIColor.cyan
        case .green: return UIColor.green
        case .orange: return UIColor.orange
        case .red: return UIColor.red
        case .magenta: return UIColor.magenta
        case .purple: return UIColor.purple
        default: return UIColor.white
        }
    }
}

extension String {
    var color: UIColor {
        switch self {
        case "brown": return UIColor.brown
        case "blue": return UIColor.blue
        case "cyan": return UIColor.cyan
        case "green": return UIColor.green
        case "orange": return UIColor.orange
        case "red": return UIColor.red
        case "magenta": return UIColor.magenta
        case "purple": return UIColor.purple
        default: return UIColor.white
        }
    }
}
