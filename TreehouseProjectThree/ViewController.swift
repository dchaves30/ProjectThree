//
//  ViewController.swift
//  TreehouseProjectThree
//
//  Created by Danilo E Chaves on 9/14/16.
//  Copyright © 2016 Danilo E Chaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var questions = gameQuestions()                     //gameQuestions's instance

    var allRoundQuestions:[[String:Any]] = [[:]]        //Stores the random questions coming from
    let questionsPerRound = 6                           //number of rounds per game
    var roundQuestions = 1                              //variable that holds number of played rounds
    var seconds = 1                                     // timer variable
    var appTimer = Timer()                              //Timer
    var timeIsUp = false                                //variable to check if 60 seconds has passed
    var score:Int = 1                                   // hold game score
    
//Game buttons and labels.
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
    @IBOutlet var labelCollection: [UITextView]!  // collection of labels for the questions. 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadButtons() //load the images to the buttons
        loadQuestions() //show the game questions in the labels
        startTimer() //start game timer.
        
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
    
    
    
    //Game TIMER*****************
    
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
    func nextRound() {
        nextRoundButton.isEnabled = false //disable button when round starts
        seconds = 1                         //reset timer
        timer.text = "\(seconds)"
        
        //Check if user already played 6 rounds
        if roundQuestions == questionsPerRound {
            // Game is over
           gameOver()
        } else {
            // Continue game
            loadQuestions()
            startTimer()
        }
    }
    
    // This function loads four questions per round, reset the counter, increment the # of rounds and present the timer on the screen
    
    func loadQuestions() {
        
        var counter = 0
        roundQuestions += 1
        nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: .normal)
        nextRoundButton.isEnabled = false
        allRoundQuestions = questions.getRandomQuestions()      //Assign 4 random dictionaries for the manipulation of questions and verification of chronological order.
        informationPanel.text = ""
        timer.text = "\(seconds)"
        
        // This functions is for debugging purposes. It checks if the user's answers are indeed correct or incorrect based on the top-botton earliest-latest events chronological order.
        for n in allRoundQuestions {
            let question:String = n["question"] as! String
            
            labelCollection[counter].text = question
            
            let year:Int = n["year"] as! Int
            print(year)
            
            counter += 1
        }
    }
    
    
    //Display the number of correct rounds and asks if the player wants to play again.
    func gameOver() {
        let gameOver = UIAlertController(title: "Game Over", message: "You got \(score) correct rounds. Click OK to play again.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: resetGame)
        gameOver.addAction(okAction)
        present(gameOver, animated: true, completion: nil)
        roundQuestions = 0
    }
    
    //Reset all the game counters once the player starts a new game.
    
    func resetGame(sender: UIAlertAction) {
        roundQuestions = 0
        score = 0
        seconds = 1
        loadQuestions()
        startTimer()
        
    }

}



