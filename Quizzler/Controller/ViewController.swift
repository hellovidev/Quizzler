//
//  ViewController.swift
//  Quizzler
//
//  Created by Sergey Romanchuk on 10.06.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var quizProgress: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    private var timer: Timer = Timer()
    private var quizBrain: QuizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        timer.invalidate()
        let userAnswer = sender.currentTitle
        
        
        quizBrain.checkAnswer(answer: userAnswer)
        
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


