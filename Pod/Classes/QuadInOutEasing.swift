//
//  QuadInOutEasing.swift
//  Pods
//
//  Created by macmini1 on 18.01.16.
//
//

import Foundation
import UIKit

public class QuadInOutEasing:NSObject, EasingFunction {
    public func compute(t: CGFloat) -> CGFloat {
        if t <= 0.5{
            return -2*t*t+2*t
        } else {
            return 2*t*t-2*t+1
        }
        
        
    }
    
    public func title() -> String {
        return "QuadInOut"
    }
}