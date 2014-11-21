//
//  ViewController.swift
//  Numbers
//
//  Created by Jon Felske on 2014-11-16.
//  Copyright (c) 2014 @jonfelske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var one: UILabel!
    @IBOutlet weak var two: UILabel!
    @IBOutlet weak var three: UILabel!
    @IBOutlet weak var four: UILabel!
    @IBOutlet weak var five: UILabel!
    @IBOutlet weak var six: UILabel!
    @IBOutlet weak var seven: UILabel!
    @IBOutlet weak var eight: UILabel!
    @IBOutlet weak var nine: UILabel!
    @IBOutlet weak var ten: UILabel!
    
   
    
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    @IBOutlet weak var zeroBtn: UIButton!
    
    @IBAction func onePressed(sender: AnyObject) {
        NSLog("One Pressed")
    }
    @IBAction func twoPressed(sender: AnyObject) {
        NSLog("Two Pressed")
    }
    @IBAction func threePressed(sender: AnyObject) {
        NSLog("Three Pressed")
    }
    @IBAction func fourPressed(sender: AnyObject) {
        NSLog("Four Pressed")
    }
    @IBAction func fivePressed(sender: AnyObject) {
         NSLog("FivePressed")
    }
    @IBAction func sixPressed(sender: AnyObject) {
        NSLog("SixPressed")
    }
    @IBAction func sevenPressed(sender: AnyObject) {
        NSLog("SevenPressed")
    }
    @IBAction func eightPressed(sender: AnyObject) {
        NSLog("EightPressed")
    }
    @IBAction func ninePressed(sender: AnyObject) {
        NSLog("NinePressed")
    }
    @IBAction func zeroPressed(sender: AnyObject) {
        NSLog("ZeroPressed")
    }
    
    @IBOutlet weak var textField: UITextField!
    var timer = NSTimer()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.timer = NSTimer.scheduledTimerWithTimeInterval(0.6, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
    }
    
    
    var counter = 1
    
    func update() {
        // Something cool
        
        //get random number
        let randomNumer = randomInt(0, max: 9)
        NSLog("randomNumber = \(randomNumer)")
        
        //set label
        numberLabel.text = "\(randomNumer)"

        
        switch counter{
            case 1:
                one.text = "\(randomNumer)"
            
            case 2: two.text = "\(randomNumer)"
            case 3: three.text = "\(randomNumer)"
            case 4: four.text = "\(randomNumer)"
            case 5: five.text = "\(randomNumer)"
            case 6: six.text = "\(randomNumer)"
            case 7: seven.text = "\(randomNumer)"
            case 8: eight.text = "\(randomNumer)"
            case 9: nine.text = "\(randomNumer)"
            default: ten.text = "\(randomNumer)"
        }
       counter++
        
        if counter > 2 {
            //stop timer
            self.timer.invalidate()
            numberLabel.hidden = true
            showkeyboard()
        }
    }
    
    func showkeyboard(){
        NSLog("Show Keyboard")
        //textField.becomeFirstResponder()
    }
    
    func randomInt(min:Int, max:Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

