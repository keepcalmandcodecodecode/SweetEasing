//
//  QuartEasing.swift
//  Pods
//
//  Created by macmini1 on 18.01.16.
//
//

import Foundation
import UIKit
public class QuartInEasing:NSObject, EasingFunction {
    
    public func compute(t: CGFloat) -> CGFloat {
        return t*t*t*t
    }
    
    public func title() -> String {
        return "QuartIn"
    }
}