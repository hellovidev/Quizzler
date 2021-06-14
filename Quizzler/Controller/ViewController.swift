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
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var middleAnswer: UIButton!
    @IBOutlet weak var lastAnswer: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
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
        
        quizBrain.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    }
    
    @objc private func updateUI() {
        firstAnswer.setTitle(quizBrain.getQuestionAnswers()[0], for: .normal)
        middleAnswer.setTitle(quizBrain.getQuestionAnswers()[1], for: .normal)
        lastAnswer.setTitle(quizBrain.getQuestionAnswers()[2], for: .normal)
        questionLabel.text = quizBrain.getQuestionDescription()
        quizProgress.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        firstAnswer.backgroundColor = .clear
        middleAnswer.backgroundColor = .clear
        lastAnswer.backgroundColor = .clear
    }
    
}
