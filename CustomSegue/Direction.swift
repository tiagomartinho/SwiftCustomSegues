//
//  Direction.swift
//  CustomSegue
//
//  Created by Martinho on 16/04/15.
//  Copyright (c) 2015 Martinho. All rights reserved.
//

import Foundation
import UIKit

enum Direction {
    case LeftToRight
    case RightToLeft
    case TopToBottom
    case BottomToTop
    
    func x()->CGFloat{
        switch self {
        case .LeftToRight:
           return -1
        case .RightToLeft:
           return +1
        case .TopToBottom:
           return 0
        case .BottomToTop:
           return 0
        }
    }
    
    func y()->CGFloat{
        switch self {
        case .LeftToRight:
            return 0
        case .RightToLeft:
            return 0
        case .TopToBottom:
            return -1
        case .BottomToTop:
            return +1
        }
    }
}