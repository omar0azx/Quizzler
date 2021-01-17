//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNum : Int = 0
    var score : Int = 0
    
    

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet  var progressBar: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var progressWidth: NSLayoutConstraint!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allQuestions.list.shuffle()
       nextQuestion()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
  
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNum = questionNum + 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score:\(score)"
        progressLabel.text = "\(questionNum + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNum + 1)
//        progressWidth.constant = (view.frame.size.width / 13) * CGFloat(questionNum + 1)
    }
    

    func nextQuestion() {
        if questionNum <= 12 {
            questionLabel.text = allQuestions.list[questionNum].questionText
            img.image = allQuestions.list[questionNum].theImage
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "you have finished", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
   }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNum].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("صح علييك")
            score += 1
        } else {
            ProgressHUD.showError("انت شارب شي ؟")
        }
        
    }
    
    
    func startOver() {
       questionNum = 0
        score = 0
        nextQuestion()
        allQuestions.list.shuffle()
    }
    

    
}
