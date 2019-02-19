//
//  ViewController.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/17/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var correctAnswers: UILabel!
    @IBOutlet weak var wrongAnswers: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    @IBOutlet weak var nextQuestion: UIButton!
    
    let allQuestions = QuestionList()
    var questionNumber: Int = 0
    static var correctScore: Int = 0
    var wrongScore: Int = 0
    var selectedAnswer: Answer = Answer.A
    var right: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateScreen()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func optionAPressed(_ sender: UIButton) {
        optionA.isUserInteractionEnabled = false
        optionB.isUserInteractionEnabled = false
        optionC.isUserInteractionEnabled = false
        optionD.isUserInteractionEnabled = false
        if selectedAnswer.description == "A" {
            updateColor(color: UIColor.green, button: optionA)
            ViewController.correctScore += 1
        }
        else {
            showRightAnswer(right: selectedAnswer.description)
            updateColor(color: UIColor.red, button: optionA)
            wrongScore += 1
        }
        questionNumber += 1
    }
    
    @IBAction func optionBPressed(_ sender: UIButton) {
        optionA.isUserInteractionEnabled = false
        optionB.isUserInteractionEnabled = false
        optionC.isUserInteractionEnabled = false
        optionD.isUserInteractionEnabled = false
        if selectedAnswer.description == "B" {
            updateColor(color: UIColor.green, button: optionB)
            ViewController.correctScore += 1
        }
        else {
            showRightAnswer(right: selectedAnswer.description)
            updateColor(color: UIColor.red, button: optionB)
            wrongScore += 1
        }
        questionNumber += 1
    }
    
    @IBAction func optionCPressed(_ sender: UIButton) {
        optionA.isUserInteractionEnabled = false
        optionB.isUserInteractionEnabled = false
        optionC.isUserInteractionEnabled = false
        optionD.isUserInteractionEnabled = false
        if selectedAnswer.description == "C" {
            updateColor(color: UIColor.green, button: optionC)
            ViewController.correctScore += 1
        }
        else {
            showRightAnswer(right: selectedAnswer.description)
            updateColor(color: UIColor.red, button: optionC)
            wrongScore += 1
        }
        questionNumber += 1
    }
    
    @IBAction func optionDPressed(_ sender: UIButton) {
        optionA.isUserInteractionEnabled = false
        optionB.isUserInteractionEnabled = false
        optionC.isUserInteractionEnabled = false
        optionD.isUserInteractionEnabled = false
        if selectedAnswer.description == "D" {
            updateColor(color: UIColor.green, button: optionD)
            ViewController.correctScore += 1
        }
        else {
            showRightAnswer(right: selectedAnswer.description)
            updateColor(color: UIColor.red, button: optionD)
            wrongScore += 1
        }
        questionNumber += 1
    }
    
    func updateQuestion() {
        if questionNumber <= allQuestions.questions.count - 1 {
            questionImage.image = UIImage(named: (allQuestions.questions[questionNumber].questionImage))
            questionText.text = allQuestions.questions[questionNumber].questionText
            optionA.setTitle(allQuestions.questions[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.questions[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.questions[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.questions[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.questions[questionNumber].answer
        }
        else {
            performSegue(withIdentifier: "showEndView", sender: self.view)
            /*let alert = UIAlertController(title: "End", message: "Do you want to start again?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)*/
        }
        updateScreen()
    }
    
    func restartQuiz() {
        //correctScore = 0
        wrongScore = 0
        questionNumber = 0
        updateQuestion()
    }
    
    func updateScreen() {
        optionA.isUserInteractionEnabled = true
        optionB.isUserInteractionEnabled = true
        optionC.isUserInteractionEnabled = true
        optionD.isUserInteractionEnabled = true
        updateColor(color: UIColor.lightGray, button: optionA)
        updateColor(color: UIColor.lightGray, button: optionB)
        updateColor(color: UIColor.lightGray, button: optionC)
        updateColor(color: UIColor.lightGray, button: optionD)
        correctAnswers.text = String(ViewController.correctScore) + "/15"
        wrongAnswers.text = String(wrongScore) + "/15"
    }
    
    func showScore() -> Int{
        return ViewController.correctScore
    }
    
    func setScoreZero(){
        ViewController.correctScore = 0
    }
    
    @IBAction func nextQuestionPressed(_ sender: UIButton) {
        updateQuestion()
    }
    
    func updateColor(color: UIColor, button: UIButton) {
        button.backgroundColor = color
    }
    
    func showRightAnswer(right: String) {
        if right == "A" {
            updateColor(color: UIColor.green, button: optionA)
        }
        else if right == "B" {
            updateColor(color: UIColor.green, button: optionB)
        }
        else if right == "C" {
            updateColor(color: UIColor.green, button: optionC)
        }
        else {
            updateColor(color: UIColor.green, button: optionD)
        }
    }
}

