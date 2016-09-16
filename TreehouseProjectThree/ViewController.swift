//
//  ViewController.swift
//  TreehouseProjectThree
//
//  Created by Danilo E Chaves on 9/14/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var downButtonOne: UIButton!
    @IBOutlet weak var upButtonTwo: UIButton!
    @IBOutlet weak var downButtonTwo: UIButton!
    @IBOutlet weak var upButtonThree: UIButton!
    @IBOutlet weak var downButtontThree: UIButton!
    @IBOutlet weak var upButtonFour: UIButton!
    @IBOutlet weak var nextRoundButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadButtons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

