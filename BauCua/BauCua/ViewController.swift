//
//  ViewController.swift
//  BauCua
//
//  Created by dong nguyen on 1/15/19.
//  Copyright © 2019 Hai Vu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imgLeft: UIImageView!
    @IBOutlet weak var imgRight: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    
    let w = UIScreen.main.bounds.width
    let h = UIScreen.main.bounds.height
    var player: AVAudioPlayer?
    let arrImg = ["bau", "cua", "tom", "ca", "ga", "nai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initData()
        self.becomeFirstResponder()
    }
    
    func initData() -> Void {
        self.imgLeft.frame.origin = CGPoint(x: 0 - w/2, y: 0)
        self.imgLeft.frame.size.height = self.h
        self.imgLeft.frame.size.width = self.w/2
        self.imgRight.frame.origin = CGPoint(x: w, y: 0)
        self.imgRight.frame.size.height = self.h
        self.imgRight.frame.size.width = self.w/2
        self.view.bringSubview(toFront: imgLeft)
        self.view.bringSubview(toFront: imgRight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.animateIn()
            self.playSound()
        }
    }
    
    func animateIn() -> Void {
        UIView.animate(withDuration: 2, animations: {
            () -> Void in
            self.imgLeft.frame.origin = CGPoint(x: 0, y: 0)
            self.imgRight.frame.origin = CGPoint(x: self.w/2, y: 0)
        }, completion: {(bool: Bool) -> Void in
            self.randomImage()
            self.animateOut()
        })
    }
    
    func animateOut() -> Void {
        UIView.animate(withDuration: 2, animations: {() -> Void in
            self.imgLeft.frame.origin = CGPoint(x: 0 - self.w/2, y: 0)
            self.imgRight.frame.origin = CGPoint(x: self.w, y: 0)
        }, completion: nil)
    }
    
    func randomImage() -> Void {
        self.img1.image = UIImage(named: self.arrImg[Int(arc4random_uniform(UInt32(self.arrImg.count)))])
        self.img2.image = UIImage(named: self.arrImg[Int(arc4random_uniform(UInt32(self.arrImg.count)))])
        self.img3.image = UIImage(named: self.arrImg[Int(arc4random_uniform(UInt32(self.arrImg.count)))])
    }
    
    func playSound() -> Void {
        let path = Bundle.main.path(forResource: "door", ofType : "wav")!
        let url = URL(fileURLWithPath : path)
        do {
            self.player = try AVAudioPlayer(contentsOf: url)
            self.player?.play()
            
        } catch {
           NSLog("ERROR READ SOUND")
        }
    }
}

