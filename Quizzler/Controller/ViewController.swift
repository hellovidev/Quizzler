//
//  ViewController.swift
//  Quizzler
//
//  Created by Sergey Romanchuk on 10.06.21.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var quizProgress: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // Variables
    
    private let quizQuestions = [
        QuizQuestion(q: "Are you human?", a: "True"),
        QuizQuestion(q: "Are clouds blue?", a: "False"),
        QuizQuestion(q: "Moscow is the center of the world!", a: "False")
    ]
    
    //    private let quizQuestions = [
    //        ["Are you human?", "True"],
    //        ["Are clouds blue?", "False"],
    //        ["Moscow is the center of the world!", "False"]
    //    ]
    
    private var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    private var timer: Timer = Timer()
    
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        timer.invalidate()
        let userAnswer = sender.currentTitle
        //let actualAnswer = quizQuestions[questionIndex][1]
        
        let actualAnswer = quizQuestions[questionIndex].answer
        
        
        
        // Handling answers
        switch userAnswer {
        case actualAnswer:
            sender.backgroundColor = .green
        default:
            sender.backgroundColor = .red
        }
        
        if quizQuestions.count - 1 > questionIndex {
            questionIndex += 1
        } else {
            resetQuiz()
        }
        
        quizProgress.progress = Float(questionIndex + 1) / Float(quizQuestions.count)
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    @objc private func updateUI() {
        //questionLabel.text = quizQuestions[questionIndex][0]
        questionLabel.text = quizQuestions[questionIndex].description
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }
    
    private func resetQuiz() {
        questionIndex = 0
    }
    
}


