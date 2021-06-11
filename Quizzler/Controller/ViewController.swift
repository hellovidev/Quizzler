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
        let userAnswer = sender.currentTitle!
        
        let isUserGotItRight = quizBrain.checkAnswer(userAnswer)
        
        // Handling answers
        sender.backgroundColor = isUserGotItRight ? .green : .red
        
        // Alternative handling answers
//        if isUserGotItRight {
//            sender.backgroundColor = .green
//        } else {
//            sender.backgroundColor = .red
//        }

        

        
        quizBrain.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    @objc private func updateUI() {
        questionLabel.text = quizBrain.getQuestionDescription()
        quizProgress.progress = quizBrain.getProgress()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }
    
}
