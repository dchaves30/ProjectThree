//
//  LoadQuestions.swift
//  Bout Time
//
//  Created by Danilo E Chaves on 9/19/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import Foundation
extension ViewController {

    
    func loadQuestions() {
        
        var counter = 0
        
        allRoundQuestions = questions.getRandomQuestions()
        //print(allRoundQuestions)
        
        for n in allRoundQuestions {
            let question:String = n["question"] as! String
            
            labelCollection[counter].text = question
            
            let year:Int = n["year"] as! Int
            print(year)
            
            counter += 1
        }
    }
    
}

