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
            case 1: one.text = "\(randomNumer)"
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
        
        if counter > 10 {
            //stop timer
            self.timer.invalidate()
        }
    }
    
    func randomInt(min:Int, max:Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

