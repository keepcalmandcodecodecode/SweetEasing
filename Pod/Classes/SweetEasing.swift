//
//  SweetEasing.swift
//  Pods
//
//  Created by macmini1 on 17.01.16.
//
//

import Foundation
import UIKit

public class SweetEasing{
    public static func valuesAndKeytimes(from:CGFloat,to:CGFloat,fps:Int,duration:Float,function:EasingFunction)->(values:[CGFloat],keytimes:[CGFloat]){
        var values:[CGFloat] = [CGFloat]()
        var keytimes:[CGFloat] = [CGFloat]()
        values.append(from)
        keytimes.append(0)
        
        let stepsCount = Int(Float(fps)*duration) - 2
        if(stepsCount>0){
            for index in 1...(stepsCount-2) {
                let timeStamp = (Float(index)*1.0/Float(stepsCount))

                let computed = function.compute(CGFloat(timeStamp))
                keytimes.append(computed)
                values.append((to-from)*computed+from)
            }
        }

        keytimes.append(1.0)
        values.append(to)
        return (values,keytimes)
    }
}
public protocol EasingFunction{
    func compute(t:CGFloat)->CGFloat
}

