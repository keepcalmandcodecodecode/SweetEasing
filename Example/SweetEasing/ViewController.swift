//
//  ViewController.swift
//  SweetEasing
//
//  Created by keepcalmandcodecodecode on 01/16/2016.
//  Copyright (c) 2016 keepcalmandcodecodecode. All rights reserved.
//

import UIKit
import SweetEasing
class ViewController: UIViewController {
    var shapeForAnimation:UIView!
    var pageControl:UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        shapeForAnimation = UIView()
        shapeForAnimation.backgroundColor = UIColor.redColor()
        self.view.addSubview(shapeForAnimation)
        
        pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 20
        pageControl.pageIndicatorTintColor = UIColor.darkGrayColor()
        pageControl.currentPageIndicatorTintColor = UIColor.lightGrayColor()
        self.view.addSubview(pageControl)
        
        let rightSwipe = UISwipeGestureRecognizer()
        rightSwipe.direction = UISwipeGestureRecognizerDirection.Right
        rightSwipe.addTarget(self, action: "swipeRight:")
        self.view.addGestureRecognizer(rightSwipe)
        
        let leftSwipe = UISwipeGestureRecognizer()
        leftSwipe.direction = UISwipeGestureRecognizerDirection.Left
        leftSwipe.addTarget(self, action: "swipeLeft:")
        self.view.addGestureRecognizer(leftSwipe)

        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.showAnimation(pageControl.currentPage)
    }
    func swipeRight(swipe:UIGestureRecognizer){
        if pageControl.numberOfPages == (pageControl.currentPage + 1){
            pageControl.currentPage = 0
        } else {
            pageControl.currentPage = pageControl.currentPage + 1
        }
        self.showAnimation(pageControl.currentPage)
    }
    func swipeLeft(swipe:UIGestureRecognizer){
        if pageControl.currentPage - 1 < 0 {
            pageControl.currentPage = pageControl.numberOfPages - 1
        } else {
            pageControl.currentPage = pageControl.currentPage - 1
        }
        self.showAnimation(pageControl.currentPage)
    }
    func showAnimation(newAnimation:Int){
        shapeForAnimation.layer.removeAllAnimations()
        let basicAnimation = CAKeyframeAnimation()
        basicAnimation.keyPath = "position.x"
        basicAnimation.repeatCount = .infinity
        basicAnimation.duration = 2.0
        let valuesAndKeytimes = SweetEasing.valuesAndKeytimes(120,to:320,fps:60,duration:2.0,function:self.currentEasingFunction(newAnimation))
        basicAnimation.values = valuesAndKeytimes.values
        basicAnimation.keyTimes = valuesAndKeytimes.keytimes
        shapeForAnimation.layer.addAnimation(basicAnimation, forKey: "basic")
   }
    func currentEasingFunction(newAnimation:Int)->EasingFunction{
        switch(newAnimation){
            case 0:
                return LinearEasing()
            case 1:
                return QuadInEasing()
            case 2:
                return CubicInEasing()
            case 3:
                return QuartInEasing()
            case 4:
                return QuadOutEasing()
            case 5:
                return CubicOutEasing()
            case 6:
                return QuartOutEasing()
            case 7:
                return QuadInOutEasing()
            case 8:
                return CubicInOutEasing()
            case 9:
                return QuartInOutEasing()
            default:
                return LinearEasing()
        }
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        shapeForAnimation.frame = CGRectMake(0, 0, 100, 100)
        shapeForAnimation.center = CGPoint(x:120,y: self.view.bounds.height/2.0)
        pageControl.frame = CGRectMake(10,self.view.bounds.height-100,self.view.bounds.width-20,100)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

