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
    

   //Check the answers when user shake his phone
    //Stop timer
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
    
    //Check if the answer are chronologically ordered using the "year" key. The ealiest events shall be on the top and the latest on the botton.
    //Assing points to each correct sequence and display "correct" for correct order or "incorrect for chronological order of events
    
    func checkAnswer() {
        
        var yearArray:[Int] = []
        nextRoundButton.isEnabled = true
        seconds = 0
        
        for n in allRoundQuestions{
            
            
                yearArray.append(n["year"] as! Int)

                }
        if yearArray[0] < yearArray[1] && yearArray[1] < yearArray [2] && yearArray[2] < yearArray[3]
        {
            score += 1
            informationPanel.text = "CORRECT!"
            nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: .normal)
        }
        else {
            informationPanel.text = "INCORRECT!"
            nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_fail"), for: .normal)
        }
                
    }
    
}


