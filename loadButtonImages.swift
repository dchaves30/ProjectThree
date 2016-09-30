//
//  buttonActions.swift
//  TreehouseProjectThree
//
//  Created by Danilo E Chaves on 9/15/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {

    
//Receive a button name and a Image name and set the button states to pushed or not pushed values
    func buttonImage(_ notPushed:UIImage, pushed:UIImage, buttonName:UIButton) {
        
        buttonName.setImage(notPushed, for: .normal)
        buttonName.setImage(pushed, for: .highlighted)
        
    }

//load all the button images including the button states when the app starts in viewDidLoad()
    func loadButtons() {
        buttonImage(#imageLiteral(resourceName: "down_full"), pushed: #imageLiteral(resourceName: "down_full_selected"), buttonName: downButtonOne)
        buttonImage(#imageLiteral(resourceName: "down_half"), pushed: #imageLiteral(resourceName: "down_half_selected"), buttonName: downButtonTwo)
        buttonImage(#imageLiteral(resourceName: "up_half"), pushed: #imageLiteral(resourceName: "up_half_selected"), buttonName: upButtonTwo)
        buttonImage(#imageLiteral(resourceName: "down_half"), pushed: #imageLiteral(resourceName: "down_half_selected"), buttonName: downButtontThree)
        buttonImage(#imageLiteral(resourceName: "up_half"), pushed: #imageLiteral(resourceName: "up_half_selected"), buttonName: upButtonThree)
        buttonImage(#imageLiteral(resourceName: "up_full"), pushed: #imageLiteral(resourceName: "up_full_selected"), buttonName: upButtonFour)
    }
    
    func buttonState() {
        
    }
}

