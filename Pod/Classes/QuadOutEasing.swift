//
//  QuadOutEasing.swift
//  Pods
//
//  Created by macmini1 on 18.01.16.
//
//

import Foundation
import UIKit

public class QuadOutEasing:NSObject, EasingFunction {

    public func compute(t: CGFloat) -> CGFloat {
        return pow(t,0.5)
    }
    
    public func title() -> String {
        return "QuadOut"
    }
}