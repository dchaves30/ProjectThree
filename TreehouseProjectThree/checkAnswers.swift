//
//  checkAnswers.swift
//  Bout Time
//
//  Created by Danilo E Chaves on 9/28/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    

    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        print("Device was shaken!")
            if timeIsUp == false {
                stopTimer()
                checkAnswer()
            }
            else {
                
                return()
            }
            
        }
    
    
    func checkAnswer() {
        
        var yearArray:[Int] = []
        nextRoundButton.isEnabled = true
        seconds = 0
        
        for n in allRoundQuestions{
            
            
                yearArray.append(n["year"] as! Int)

                }
        if yearArray[0] < yearArray[1] && yearArray[1] < yearArray [2] && yearArray[2] < yearArray[3]
        {
            score += 15
            informationPanel.text = "CORRECT!"
            nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: .normal)
        }
        else {
            informationPanel.text = "INCORRECT!"
            nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_fail"), for: .normal)
        }
                
    }
    
//    func timeIsUp() {
//        
//        if 
//    }
    
 
}


