//
//  ViewController.swift
//  Buoi3
//
//  Created by dong nguyen on 1/10/19.
//  Copyright © 2019 Hai Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func clicked() {
        NSLog("Hello")
    }
    
    @IBAction func xoa() {
        self.view.viewWithTag(11)?.removeFromSuperview()
        self.view.viewWithTag(44)?.removeFromSuperview()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create view
        let v1 = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        let v2 = UIView(frame: CGRect(x: 160, y: 50, width: 100, height: 100))
        v1.backgroundColor = UIColor.green
        v2.backgroundColor = UIColor.blue
        
        v1.tag = 11
        v2.tag = 22
        
        self.view.addSubview(v1)
        self.view.addSubview(v2)
        
        //create pictureview
        let img1 = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        let img2 = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        img1.image = UIImage(named: "luffy1.png")
        img2.image = UIImage(named: "luffy2.png")
        img1.contentMode = .scaleAspectFit
        img2.contentMode = .scaleAspectFit
        
        img1.tag = 33
        img2.tag = 44
        
        v1.addSubview(img1)
        v2.addSubview(img2)
        
        let btn1 = UIButton(frame: CGRect(x: 180, y: 180, width: 100, height: 30))
        btn1.setTitle("Log", for: .normal)
        btn1.setTitleColor(UIColor.cyan, for: .normal)
        self.view.addSubview(btn1)
        
        btn1.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        
        let btn2 = UIButton(frame: CGRect(x: 20, y: 180, width: 100, height: 30))
        btn2.setTitle("Delete", for: .normal)
        btn2.setTitleColor(UIColor.darkGray, for: .normal)
        self.view.addSubview(btn2)
        
        btn2.addTarget(self, action: #selector(xoa), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

