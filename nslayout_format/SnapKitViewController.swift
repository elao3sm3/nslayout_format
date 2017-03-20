//
//  SnapKitViewController.swift
//  nslayout_format
//
//  Created by sinopac on 2017/2/21.
//  Copyright © 2017年 sinopac. All rights reserved.
//

import UIKit
import SnapKit

class SnapKitViewController: UIViewController {

    lazy var orange = UIView()
    lazy var blue = UIView()
    lazy var green = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        orange.backgroundColor = UIColor.orange
        blue.backgroundColor = UIColor.blue
        green.backgroundColor = UIColor.green
        
        self.view.addSubview(orange)
        self.view.addSubview(blue)
        self.view.addSubview(green)
        
        orange.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(20)
            make.top.equalTo(20)
            
            
        }
        
        blue.snp.makeConstraints { (make) -> Void in
            make.right.equalTo(-20)
            make.left.equalTo(orange.snp.right).offset(20)
            make.top.equalTo(20)
            
            make.width.equalTo(orange)
        }
        
        green.snp.makeConstraints { (make) -> Void in
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.bottom.equalTo(-20)
            make.top.equalTo(orange.snp.bottom).offset(20)
            make.top.equalTo(blue.snp.bottom).offset(20)
            make.height.equalTo(orange)
            make.height.equalTo(blue)
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
