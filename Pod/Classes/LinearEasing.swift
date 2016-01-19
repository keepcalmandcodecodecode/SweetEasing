//
//  LinearEasing.swift
//  Pods
//
//  Created by macmini1 on 17.01.16.
//
//

import Foundation
import UIKit
public class LinearEasing:NSObject, EasingFunction {
    public func compute(t: CGFloat) -> CGFloat {
        return t
    }
    public func title() -> String {
        return "Linear"
    }
}