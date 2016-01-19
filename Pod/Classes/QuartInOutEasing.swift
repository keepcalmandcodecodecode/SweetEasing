//
//  QuartInOutEasing.swift
//  Pods
//
//  Created by macmini1 on 19.01.16.
//
//

import Foundation

import UIKit

public class QuartInOutEasing:NSObject, EasingFunction {
    public func compute(t: CGFloat) -> CGFloat {
        if t <= 0.5{
            return 8*t*t*t*t
        } else {
            return -8*pow((t-1),4)+1
        }
        
        
    }
    
    public func title() -> String {
        return "QuartInOut"
    }
}