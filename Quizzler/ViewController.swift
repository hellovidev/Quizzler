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
        "Are you human?",
        "Are clouds blue?",
        "Moscow is the center of the world!"
    ]
    
    private var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        questionIndex += 1
        updateUI()
    }
    
    private func updateUI() {
        questionLabel.text = quizQuestions[questionIndex]
    }
}

