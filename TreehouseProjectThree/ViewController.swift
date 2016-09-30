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
    var roundQuestions = 1
    var seconds = 1
    var appTimer = Timer()
    var timeIsUp = false
    var score:Int = 0
    

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
        switchString(.down)
        
    }
    
    @IBAction func pushHalfUpOne() {
        switchString(.upHalfOne)
        
    }
    @IBAction func pushHalfDownOne() {
        switchString(.downHalfOne)
        
    }
    @IBAction func pushHalfUpTwo() {
        switchString(.upHalfTwo)
        
    }
    @IBAction func pushHalfDownTwo() {
        switchString(.downHalfTwo)
        
    }
    @IBAction func pushUpTwo() {
        switchString(.up)
        
    }
    @IBAction func checkAnswerTest() {
        nextRound()
    }

//***************** Helper Methods *****************************
    
    
    
    //TIMER*****************
    
     func startTimer(){
        appTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
     func updateTimer(){
        seconds += 1
        timer.text = "\(seconds)"
        if seconds == 60 {
            stopTimer()
            checkAnswer()
            timeIsUp = true
        }
        else{
            nextRoundButton.isEnabled = false
            timeIsUp = false
            
        }
    }
    
     func stopTimer() {
        appTimer.invalidate()
        seconds = 1
        informationPanel.text = "Time is Up"
        nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_fail"), for: .normal)
    }
    
    //END TIMER*************
    
    
    //PLAY NEXT ROUND
   //FIXME: Review these below!
    func nextRound() {
        nextRoundButton.isEnabled = false
        seconds = 1
        timer.text = "\(seconds)"
        if roundQuestions == questionsPerRound {
            // Game is over
           gameOver()
        } else {
            // Continue game
            loadQuestions()
            startTimer()
        }
    }
    
    func loadQuestions() {
        
        var counter = 0
        roundQuestions += 1
        nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: .normal)
        nextRoundButton.isEnabled = false
        allRoundQuestions = questions.getRandomQuestions()
        informationPanel.text = ""
        timer.text = "\(seconds)"
        
        
        //print(allRoundQuestions)
        
        for n in allRoundQuestions {
            let question:String = n["question"] as! String
            
            labelCollection[counter].text = question
            
            let year:Int = n["year"] as! Int
            print(year)
            
            counter += 1
        }
    }
    
    func gameOver() {
        let gameOver = UIAlertController(title: "Game Over", message: "Your score was \(score). Click OK to play again.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: resetGame)
        gameOver.addAction(okAction)
        present(gameOver, animated: true, completion: nil)
        roundQuestions = 0
    }
    
    func resetGame(sender: UIAlertAction) {
        roundQuestions = 0
        score = 0
        seconds = 1
        loadQuestions()
        startTimer()
        
    }

}



