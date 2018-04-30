//
//  ThirdViewController.swift
//  AliceinWonderlandFinal
//
//  Created by Valverde, Charity on 4/30/18.
//  Copyright © 2018 Valverde, Charity. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    
    
    
    var Late:Int = 0
    var Carrots:Int = 0
    var Hurry:Int = 0
    var total:Int = 0
    
    
    
    
    @IBAction func selectLate(_ sender: UISwitch) {
        if sender.isOn {
            Late = 2
        }
        else {
            Late = 0
        }
    }
    
    
    
    
    @IBAction func selectCarrots(_ sender: UISwitch) {
        if sender.isOn {
            Carrots = 1
        }
        else {
            Carrots = 0
        }
    }
    
    
    
    
    @IBAction func selectHurry(_ sender: UISwitch) {
        if sender.isOn {
            Hurry = 1
        }
        else {
            Hurry = 0
        }
    }
    
   
    
    
    
    @IBOutlet weak var myTotal: UILabel!
    
    

    
    @IBAction func Submit(_ sender: UIButton) {
        total = Late + Carrots + Hurry
        // score.text = "\(total)"
        
        if(total <= 1) {
            myTotal.text = "Watch the Movie Again"
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
