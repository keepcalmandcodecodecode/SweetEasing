//
//  CubicInOutEasing.swift
//  Pods
//
//  Created by macmini1 on 19.01.16.
//
//

import Foundation
import UIKit

public class CubicInOutEasing:NSObject, EasingFunction {
    public func compute(t: CGFloat) -> CGFloat {
        if t <= 0.5{
            return 4*t*t*t
        } else {
            return 4*pow((t-1),3)+1
        }
        
        
    }
    
    public func title() -> String {
        return "CubicInOut"
    }
}