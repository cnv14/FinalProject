//
//  FirstViewController.swift
//  AliceinWonderlandFinal
//
//  Created by Valverde, Charity on 4/30/18.
//  Copyright © 2018 Valverde, Charity. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var lilypads:Int = 0
    var GoldenAfternoon:Int = 0
    var bluebonnetsun:Int = 0
    var AprilShowers:Int = 0
    var total:Int = 0
    
    
    

    @IBAction func selectLilypads(_ sender: UISwitch) {
        if sender.isOn {
            lilypads = 1
        }
        else {
            lilypads = 0
        }
        
    }
    

    @IBAction func selectGoldenafternoon(_ sender: UISwitch) {
        if sender.isOn {
            GoldenAfternoon = 2
        }
        else {
            GoldenAfternoon = 0
        }
    }
    

    
    
    @IBAction func selectBluebonnetsun(_ sender: UISwitch) {
        if sender.isOn {
            bluebonnetsun = 1
        }
        else {
            bluebonnetsun = 0
        }
    }
    

    
    
    
   
  
    
    
    @IBOutlet weak var myTotal: UILabel!
    
    
    
  
    
    @IBAction func Submit(_ sender: UIButton) {
        total = lilypads + GoldenAfternoon + bluebonnetsun
        // score.text = "\(total)"
        
        if(total <= 1) {
            myTotal.text = "Watch The Movie Again"
            myImage.image = UIImage(named: "bummer")               }
            
            
            
        else if(total >= 1 && total <= 2){
            myTotal.text = "You are an Expert"
            myImage.image = UIImage(named: "pineapple")
        }
            
        else {
            myTotal.text = "Keep Trying Buddy!"
            myImage.image = UIImage(named: "keeptrying")
            
        }
        
        
    }
    
    
    
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

    

