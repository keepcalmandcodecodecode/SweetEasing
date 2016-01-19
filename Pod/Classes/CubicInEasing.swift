//
//  CubicEasing.swift
//  Pods
//
//  Created by macmini1 on 18.01.16.
//
//

import Foundation
import UIKit
public class CubicInEasing:NSObject, EasingFunction {
    
    public func compute(t: CGFloat) -> CGFloat {
        return t*t*t
    }
    
    public func title() -> String {
        return "CubicIn"
    }
}