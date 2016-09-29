//
//  checkAnswers.swift
//  Bout Time
//
//  Created by Danilo E Chaves on 9/28/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import Foundation

extension ViewController {
    
    func checkAnswer() {
        
        var yearArray:[Int] = []
        
        for n in allRoundQuestions{
            
            
                yearArray.append(n["year"] as! Int)

                }
        if yearArray[0] < yearArray[1] && yearArray[1] < yearArray [2] && yearArray[2] < yearArray[3]
        {
            print("winner")
        }
        else {
            print("looser")
        }
                
    }
    
 
}


