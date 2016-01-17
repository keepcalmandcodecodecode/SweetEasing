//
//  ViewController.swift
//  SweetEasing
//
//  Created by keepcalmandcodecodecode on 01/16/2016.
//  Copyright (c) 2016 keepcalmandcodecodecode. All rights reserved.
//

import UIKit

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
        pageControl.numberOfPages = 5
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
        let basicAnimation = CABasicAnimation()
        basicAnimation.keyPath = "position.x"
        basicAnimation.fromValue = 120
        basicAnimation.toValue = 320
        basicAnimation.duration = 1
        basicAnimation.repeatCount = .infinity
        basicAnimation.timingFunction = CAMediaTimingFunction(controlPoints: 0.5, 0.0, 0.9, 0.7)
        shapeForAnimation.layer.addAnimation(basicAnimation, forKey: "basic")


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

