//
//  ViewController.swift
//  ShowHideImage
//
//  Created by dong nguyen on 1/8/19.
//  Copyright © 2019 Hai Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //define variable
    var arrImg = [String]()
    var imgViewArray = [UIImageView]()
    var myTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 30))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // init array
        self.arrImg.append("luffy1")
        self.arrImg.append("luffy2")
        self.arrImg.append("luffy3")
        
        //generate UIIMAGEVIEW
        for (index, element) in self.arrImg.enumerated() {
            let imgView = UIImageView(frame: CGRect(x: index*150, y: 200, width: 50, height: 100))
            imgView.image = UIImage(named: element)
            imgView.contentMode = UIViewContentMode.scaleAspectFit
            self.view.addSubview(imgView)
            
            //add to array to hide show when click the button
            self.imgViewArray.append(imgView)
        }
        
        //generate text field
        self.myTextField.borderStyle = UITextBorderStyle.line
        self.myTextField.center = self.view.center
        self.view.addSubview(myTextField)
        
        //generate button
        let btnShowHideView = UIButton(frame: CGRect(x: 120, y: 510, width: 100, height: 50))
        btnShowHideView.setTitle("showHideRandom", for: UIControlState.normal)
        btnShowHideView.backgroundColor = UIColor.green
        btnShowHideView.sizeToFit()
        self.view.addSubview(btnShowHideView)
        btnShowHideView.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        if(Int(self.myTextField.text!) != nil && Int(self.myTextField.text!)! >= 1 && Int(self.myTextField.text!)! <= self.imgViewArray.count) {
            let intNUmber:Int = Int(self.myTextField.text!)!
            self.imgViewArray[intNUmber - 1].isHidden = !self.imgViewArray[intNUmber - 1].isHidden
        } else {
            let int1 = Int(arc4random_uniform(3))
            self.imgViewArray[int1].isHidden = !self.imgViewArray[int1].isHidden
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

