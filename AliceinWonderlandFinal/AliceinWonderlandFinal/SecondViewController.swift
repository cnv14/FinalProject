//
//  SecondViewController.swift
//  AliceinWonderlandFinal
//
//  Created by Valverde, Charity on 4/30/18.
//  Copyright © 2018 Valverde, Charity. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
  
        var Kitten:Int = 0
        var Dinah:Int = 0
        var Pepper:Int = 0
        var total:Int = 0
        
        
    @IBAction func selectKitten(_ sender: UISwitch) {
        if sender.isOn {
            Kitten = 1
        }
        else {
            Kitten = 0
        }
        
    }
    
    
    

    @IBAction func selectDinah(_ sender: UISwitch) {
        if sender.isOn {
            Dinah = 2
        }
        else {
            Dinah = 0
        }
    }
    
        
        

    @IBAction func selectPepper(_ sender: UISwitch) {
        if sender.isOn {
            Pepper = 1
        }
        else {
            Pepper = 0
        }
    }
    
        
 
        
        

    
        
        @IBOutlet weak var myTotal: UILabel!
        
        
  
        
        @IBAction func Submit(_ sender: UIButton) {
            total = Kitten + Dinah + Pepper
            // score.text = "\(total)"
            
            if(total <= 1) {
                myTotal.text = "Watch The Movie Again!"
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
