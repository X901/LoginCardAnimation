//
//  ViewController.swift
//  LoginCardAnimation
//
//  Created by X901 on 4/5/17.
//  Copyright © 2017 Basil Baragabah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginCard: UIStackView!
    
    @IBOutlet weak var loginLeadingConstraint: NSLayoutConstraint!
        
    @IBOutlet weak var signupLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var signupCard: UIStackView!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.sendSubview(toBack: loginCard)
        
        
        loginCard.transform = CGAffineTransform(rotationAngle: -CGFloat(Double.pi/2))
        
        loginLeadingConstraint.constant = 134
        
   



    }
    
    
    @IBAction func clickedLogin(_ sender: Any) {
        
        
        if loginLeadingConstraint.constant == 134 {
        
        
        UIView.animate(withDuration: 0.5, animations: {
            
            
            self.signupCard.transform = CGAffineTransform(translationX: 50, y: 200).rotated(by: 100)
            
            
            
            
            self.loginCard.transform = CGAffineTransform(translationX: -50, y: -200).rotated(by: -100)
            
            
            self.loginLeadingConstraint.constant = 46
            self.view.layoutIfNeeded()
            
            self.view.sendSubview(toBack: self.signupCard)
            
        }) { (true) in
            
            
            UIView.animate(withDuration: 0.4, animations: {
                
                
                
                self.signupCard.transform = CGAffineTransform(translationX: 100, y: -200).rotated(by: -150)
                
                self.loginCard.transform = CGAffineTransform(translationX: -100, y: 200).rotated(by: 150)
                
                
                
                self.loginCard.transform = CGAffineTransform(translationX: 0, y: 0).rotated(by:0)
                
                self.signupCard.transform = CGAffineTransform(translationX: 0, y: 0).rotated(by:-CGFloat(Double.pi/2))
                
                
                
                
                self.signupLeadingConstraint.constant = 134
                self.view.layoutIfNeeded()
                
                
                
            })
            
            
            
            
            
            
            
        }
        
        } else{
            
            
    // do something when click again on login button , your code will be here
        }
        
        
        
    }
    
    
    
    
    @IBAction func clickedSignup(_ sender: Any) {
        
        if signupLeadingConstraint.constant == 134 {
        
        UIView.animate(withDuration: 0.4, animations: {
            
            
            
            self.loginCard.transform = CGAffineTransform(translationX: 50, y: 200).rotated(by: 100)
            
            
            
            self.view.sendSubview(toBack: self.loginCard)
            
            
            self.signupCard.transform = CGAffineTransform(translationX: -50, y: -200).rotated(by: -100)
            
            
            self.signupLeadingConstraint.constant = 46
            self.view.layoutIfNeeded()
            
        }) { (true) in
            
            
            UIView.animate(withDuration: 0.5, animations: {
                
                
                self.loginCard.transform = CGAffineTransform(translationX: 100, y: -200).rotated(by: -150)
                
                self.signupCard.transform = CGAffineTransform(translationX: -100, y: 200).rotated(by: 150)
                
                
                self.loginCard.transform = CGAffineTransform(translationX: 0, y: 0).rotated(by:-CGFloat(Double.pi/2))
                
                self.signupCard.transform = CGAffineTransform(translationX: 0, y: 0).rotated(by:0)
                
                
                
                self.loginLeadingConstraint.constant = 134
                self.view.layoutIfNeeded()
                
                
            })
            
            
            
            
            
            
            
        }
        
        
        
        
        
        }else{
            // do something when click again on login button , your code will be here

            
            
        }
    }
    
}

