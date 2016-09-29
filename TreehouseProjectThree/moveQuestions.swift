//
//  moveQuestions.swift
//  Bout Time
//
//  Created by Danilo E Chaves on 9/27/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import Foundation

extension ViewController {

    
    enum moveQuestions {
        case down
        case upHalfOne
        case downHalfOne
        case upHalfTwo
        case downHalfTwo
        case up
        
    }


    func switchString(_ textPosition: moveQuestions) {
        
        switch textPosition {
            
        case .down:
            swap(&allRoundQuestions[0], &allRoundQuestions[1])
            swap(&labelCollection[0].text, &labelCollection[1].text)
        
        case .upHalfOne:
            swap(&allRoundQuestions[1], &allRoundQuestions[0])
            swap(&labelCollection[1].text, &labelCollection[0].text)
        case .downHalfOne:
            swap(&allRoundQuestions[1], &allRoundQuestions[2])
            swap(&labelCollection[1].text, &labelCollection[2].text)
            
        case .upHalfTwo:
            swap(&allRoundQuestions[2], &allRoundQuestions[1])
            swap(&labelCollection[2].text, &labelCollection[1].text)
        case .downHalfTwo:
            swap(&allRoundQuestions[2], &allRoundQuestions[3])
            swap(&labelCollection[2].text, &labelCollection[3].text)
        case .up:
            swap(&allRoundQuestions[3], &allRoundQuestions[2])
            swap(&labelCollection[3].text, &labelCollection[2].text)
        }
        
        for n in allRoundQuestions {
            print(n["year"])
            
        }
    print("-----")
    }
}
