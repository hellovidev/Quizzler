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
        ["Are you human?", "True"],
        ["Are clouds blue?", "False"],
        ["Moscow is the center of the world!", "False"]
    ]
    
    private var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quizQuestions[questionIndex][1]
        
        // Handling answers
        switch userAnswer {
        case actualAnswer:
            print("Cool!")
        default:
            print("Whats wrong with you?")
        }
        
        questionIndex += 1
        updateUI()
    }
    
    private func updateUI() {
        questionLabel.text = quizQuestions[questionIndex][0]
    }
}

