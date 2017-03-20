//
//  formatViewController.swift
//  nslayout_format
//
//  Created by sinopac on 2017/2/20.
//  Copyright © 2017年 sinopac. All rights reserved.
//

import UIKit

class formatViewController: UIViewController {

    var orange = UIView()
    var blue = UIView()
    var green = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orange.backgroundColor = UIColor.orange
        blue.backgroundColor = UIColor.blue
        green.backgroundColor = UIColor.green
        
        self.view.addSubview(orange)
        self.view.addSubview(blue)
        self.view.addSubview(green)
        
        orange.translatesAutoresizingMaskIntoConstraints = false
        blue.translatesAutoresizingMaskIntoConstraints = false
        green.translatesAutoresizingMaskIntoConstraints = false
        
        let viewDictionary : Dictionary = ["orangeView":orange,"blueView":blue,"greenView":green]
        
        let orangeWidth = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[orangeView(blueView)]-20-[blueView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewDictionary)
        let orangeHeight = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[orangeView(greenView)]-20-[greenView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewDictionary)
        
        self.view.addConstraints(orangeWidth)
        self.view.addConstraints(orangeHeight)
        
        let blueWidth = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[orangeView(blueView)]-20-[blueView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewDictionary)
        let blueHeight = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[blueView(greenView)]-20-[greenView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewDictionary)
        
        self.view.addConstraints(blueWidth)
        self.view.addConstraints(blueHeight)
        
        let greenWidth = NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[greenView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewDictionary)
        let greenHeight = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[orangeView(blueView)]-20-[greenView]-20-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewDictionary)
        
        self.view.addConstraints(greenWidth)
        self.view.addConstraints(greenHeight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
