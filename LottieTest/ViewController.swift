//
//  ViewController.swift
//  LottieTest
//
//  Created by 黃毓皓 on 2017/7/17.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let myAnimationView = LOTAnimationView(name: "timer_(3_second_loop)"){
            myAnimationView.frame = CGRect(x: 150, y: 50, width: 100, height: 100)
           // myAnimationView.center = self.view.center
            myAnimationView.contentMode = .scaleAspectFill
            myAnimationView.loopAnimation = true
            view.addSubview(myAnimationView)
            myAnimationView.play()
        }
        if let myAnimationView = LOTAnimationView(name: "pink_drink_machine"){
            myAnimationView.frame = CGRect(x: 150, y: 250, width: 100, height: 100)
            // myAnimationView.center = self.view.center
            myAnimationView.contentMode = .scaleAspectFill
            myAnimationView.loopAnimation = true
            view.addSubview(myAnimationView)
            myAnimationView.play()
        }
        if let myAnimationView = LOTAnimationView(name: "crown"){
            myAnimationView.frame = CGRect(x: 150, y: 450, width: 300, height: 300)
            // myAnimationView.center = self.view.center
            myAnimationView.contentMode = .scaleAspectFill
            myAnimationView.loopAnimation = true
            
            
            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            myAnimationView.transform = minimizeTransform
            
            //apply uiview animation
            UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
                myAnimationView.transform = CGAffineTransform.identity
            }, completion: nil)
            view.addSubview(myAnimationView)
            myAnimationView.play()
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

