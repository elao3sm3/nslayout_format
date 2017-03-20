//
//  ViewController.swift
//  nslayout_format
//
//  Created by sinopac on 2017/2/20.
//  Copyright © 2017年 sinopac. All rights reserved.
//

import UIKit


class ViewController: UIViewController{

    var orange = UIView()
    var blue = UIView()
    var green = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        orange.backgroundColor = UIColor.orange
        blue.backgroundColor = UIColor.blue
        green.backgroundColor = UIColor.green
        
        self.view.addSubview(orange)
        self.view.addSubview(blue)
        self.view.addSubview(green)
        
        orange.translatesAutoresizingMaskIntoConstraints = false
        blue.translatesAutoresizingMaskIntoConstraints = false
        green.translatesAutoresizingMaskIntoConstraints = false

        let orangelead = NSLayoutConstraint(item:orange,attribute:.leading,relatedBy:.equal,toItem:self.view,attribute:.leading,multiplier:1,constant:20)
        let orangetop = NSLayoutConstraint(item:orange,attribute:.top,relatedBy:.equal,toItem:self.view,attribute:.top,multiplier:1,constant:20)
        //let orangeheight = NSLayoutConstraint(item:orange,attribute:.height,relatedBy:.equal,toItem:nil,attribute:.notAnAttribute,multiplier:1,constant:100)
        //let orangewidth = NSLayoutConstraint(item:orange,attribute:.width,relatedBy:.equal,toItem:nil,attribute:.notAnAttribute,multiplier:1,constant:100)
        
        self.view.addConstraint(orangetop)
        self.view.addConstraint(orangelead)
        //self.view.addConstraint(orangeheight)
        //self.view.addConstraint(orangewidth)

        let bluetrail = NSLayoutConstraint(item:blue,attribute:.trailing,relatedBy:.equal,toItem:self.view,attribute:.trailing,multiplier:1,constant:-20)
        let bluelead = NSLayoutConstraint(item:blue,attribute:.leading,relatedBy:.equal,toItem:orange,attribute:.trailing,multiplier:1,constant:20)
        let bluetop = NSLayoutConstraint(item:blue,attribute:.top,relatedBy:.equal,toItem:self.view,attribute:.top,multiplier:1,constant:20)
        //let blueheight = NSLayoutConstraint(item:blue,attribute:.height,relatedBy:.equal,toItem:nil,attribute:.notAnAttribute,multiplier:1,constant:100)
        let bluewidth = NSLayoutConstraint(item:blue,attribute:.width,relatedBy:.equal,toItem:orange,attribute:.width,multiplier:1,constant:0)
        
        NSLayoutConstraint.activate([bluewidth,bluetrail,bluelead,bluetop])
        
        let greenlead = NSLayoutConstraint(item:green,attribute:.leading,relatedBy:.equal,toItem:self.view,attribute:.leading,multiplier:1,constant:20)
        let greentrail = NSLayoutConstraint(item:green,attribute:.trailing,relatedBy:.equal,toItem:self.view,attribute:.trailing,multiplier:1,constant:-20)
        let greentop = NSLayoutConstraint(item:green,attribute:.top,relatedBy:.equal,toItem:orange,attribute:.bottom,multiplier:1,constant:20)
        let greenbottom = NSLayoutConstraint(item:green,attribute:.bottom,relatedBy:.equal,toItem:self.view,attribute:.bottom,multiplier:1,constant:-20)
        let greenheight = NSLayoutConstraint(item:green,attribute:.height,relatedBy:.equal,toItem:orange,attribute:.height,multiplier:1,constant:0)
        let greenbottomb = NSLayoutConstraint(item:green,attribute:.top,relatedBy:.equal,toItem:blue,attribute:.bottom,multiplier:1,constant:20)
        let greenheightb = NSLayoutConstraint(item:green,attribute:.height,relatedBy:.equal,toItem:blue,attribute:.height,multiplier:1,constant:0)
        //let greenwidth = NSLayoutConstraint(item:green,attribute:.width,relatedBy:.equal,toItem:nil,attribute:.notAnAttribute,multiplier:1,constant:100)
        
        NSLayoutConstraint.activate([greenlead,greentop,greentrail,greenbottom,greenheight,greenbottomb,greenheightb])

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

