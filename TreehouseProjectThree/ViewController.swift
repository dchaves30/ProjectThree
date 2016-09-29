//
//  ViewController.swift
//  TreehouseProjectThree
//
//  Created by Danilo E Chaves on 9/14/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var questions = gameQuestions()
    var allRoundQuestions:[[String:Any]] = [[:]]
    let questionsPerRound = 6
    var roundQuestions = 0
    var seconds = 0
    var appTimer = Timer()
    var timerIsOn = false
    

    @IBOutlet weak var downButtonOne: UIButton!
    @IBOutlet weak var upButtonTwo: UIButton!
    @IBOutlet weak var downButtonTwo: UIButton!
    @IBOutlet weak var upButtonThree: UIButton!
    @IBOutlet weak var downButtontThree: UIButton!
    @IBOutlet weak var upButtonFour: UIButton!
    @IBOutlet weak var nextRoundButton: UIButton!
    @IBOutlet weak var timer: UITextView!
    @IBOutlet weak var informationPanel: UITextView!
    @IBOutlet weak var firstLabelTop: UITextView!
    @IBOutlet weak var secondLabelTop: UITextView!
    @IBOutlet weak var thirdLabelBotton: UITextView!
    @IBOutlet weak var fourthLabelBotton: UITextView!
    @IBOutlet var labelCollection: [UITextView]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadButtons()
        loadQuestions()
        startTimer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
//************** BUTTON ACTIONS ***************************\\
    
    @IBAction func pushDownOne() {
        switchString(.Down)
        
    }
    
    @IBAction func pushHalfUpOne() {
        switchString(textPosition: .upHalfOne)
        
    }
    @IBAction func pushHalfDownOne() {
        switchString(textPosition: .downHalfOne)
        
    }
    @IBAction func pushHalfUpTwo() {
        switchString(textPosition: .upHalfTwo)
        
    }
    @IBAction func pushHalfDownTwo() {
        switchString(textPosition: .downHalfTwo)
        
    }
    @IBAction func pushUpTwo() {
        switchString(textPosition: .Up)
        
    }
    @IBAction func checkAnswerTest() {
        checkAnswer()
    }

//***************** Helper Methods *****************************
    //TIMER
    
     func startTimer(){
        appTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
     func updateTimer(){
        seconds += 1
        timer.text = "\(seconds)"
        if seconds == 60 {
            stopTimer()
        }
    }
    
     func stopTimer() {
        appTimer.invalidate()
        seconds = 1
        informationPanel.text = "Time is Up"
        nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_fail"), for: .normal)
    }
    
    //END TIMER
    
    
    //PLAY NEXT ROUND
    func nextRound() {
        if roundQuestions == questionsPerRound {
            // Game is over
           // displayScore()
        } else {
            // Continue game
            loadQuestions()
            nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: .normal)
        }
    }
    
    func loadNextRoundWithDelay(seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime(DIS)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }


}



