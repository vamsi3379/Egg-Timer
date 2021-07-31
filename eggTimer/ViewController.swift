//
//  ViewController.swift
//  eggTimer
//
//  Created by vamsi pachamatla on 29/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var soft: UIImageView!
    
    @IBOutlet weak var medium: UIImageView!
    
    @IBOutlet weak var hard: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var timeProgressBar: UIProgressView!
    
    
    let eggTimes  = ["Soft" : 300  , "Medium" : 420 , "Hard" : 720 ]
    
    var totalTime =  0
    var secondsPassed = 0
    
    var timer = Timer()
    
  
    
   
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }



        @objc func updateTimer() {
            
            if secondsPassed < totalTime{
                let progressBarCalculator = Float(secondsPassed) / Float(totalTime)
                timeProgressBar.progress = Float(progressBarCalculator)
                secondsPassed += 1
            } else {
                timer.invalidate()
                titleLabel.text = "Done!"
                
                
            }
        }
        
        
    }
    




