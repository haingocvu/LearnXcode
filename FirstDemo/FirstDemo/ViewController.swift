//
//  ViewController.swift
//  FirstDemo
//
//  Created by dong nguyen on 1/4/19.
//  Copyright © 2019 Hai Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var lblHi: UILabel!
    @IBAction func sayHi(_ sender: Any) {
        let strNum1 = txtFirstName.text
        let strNum2 = txtLastName.text
        if isNumber(str: strNum1!) && isNumber(str: strNum2!) {
            let num1:Int = Int(strNum1!)!
            let num2:Int = Int(strNum2!)!
            lblHi.text = String(num1 + num2)
        } else {
            lblHi.text = "there's a problem when calculating"
        }
    }
    
    func isNumber(str:String) -> Bool {
        return Int(str) != nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblHi.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

