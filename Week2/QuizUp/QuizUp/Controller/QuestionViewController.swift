//
//  ViewController.swift
//  QuizUp
//
//  Created by Dariga Akhmetova on 2/17/19.
//  Copyright © 2019 Dariga Akhmetova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Declaration of controlles on QuestionViewController
    @IBOutlet weak var correctAnswers: UILabel!
    @IBOutlet weak var wrongAnswers: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    @IBOutlet weak var QuestionImageText: UIView!
    @IBOutlet weak var HeaderView: UIView!
    @IBOutlet weak var AnswerView: UIView!
    
    //Local variables
    let allQuestions = QuestionList()
    var questionNumber: Int = 0
    static var correctScore: Int = 0
    var wrongScore: Int = 0
    var selectedAnswer: Answer = Answer.A
    var right: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateScreen()
        updateQuestion()
        optionD.layer.cornerRadius = 5
        optionC.layer.cornerRadius = 5
        optionB.layer.cornerRadius = 5
        optionA.layer.cornerRadius = 5
        questionText.font = UIFont(name: "Copperplate", size: questionText.font.pointSize)
        correctAnswers.font = UIFont(name: "Copperplate", size: questionText.font.pointSize)
        wrongAnswers.font = UIFont(name: "Copperplate", size: questionText.font.pointSize)
        optionD.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        optionC.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        optionB.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        optionA.titleLabel?.font = UIFont(name: "Copperplate", size: 20)
        HeaderView.layer.cornerRadius = 5
        QuestionImageText.layer.cornerRadius = 5
        AnswerView.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Action on button pressed
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
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.updateQuestion), userInfo: nil, repeats: false)
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
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.updateQuestion), userInfo: nil, repeats: false)
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
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.updateQuestion), userInfo: nil, repeats: false)
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
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ViewController.updateQuestion), userInfo: nil, repeats: false)
    }
    
    //Showing next question in the list of  question, if there is no question next, EndViewController is shown
    @objc func updateQuestion() {
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
        }
        updateScreen()
    }
    
    //Restart of the quiz, setting all scores to zero
    func restartQuiz() {
        //correctScore = 0
        wrongScore = 0
        questionNumber = 0
        updateQuestion()
    }
    
    //Updating buttons and indicators of correct and wrong answers
    func updateScreen() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.showRightAnswer(right: self.selectedAnswer.description)
//        }
        optionA.isUserInteractionEnabled = true
        optionB.isUserInteractionEnabled = true
        optionC.isUserInteractionEnabled = true
        optionD.isUserInteractionEnabled = true
        updateColor(color: UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 0.8), button: optionA)
        updateColor(color: UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 0.8), button: optionB)
        updateColor(color: UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 0.8), button: optionC)
        updateColor(color: UIColor.init(red: 255/255, green: 215/255, blue: 0/255, alpha: 0.8), button: optionD)
        correctAnswers.text = String(ViewController.correctScore) + "/15"
        wrongAnswers.text = String(wrongScore) + "/15"
    }
    
    //Acessor method to get score in next ViewController
    func showScore() -> Int{
        return ViewController.correctScore
    }
    
    //Setting score to zero to restart question
    func setScoreZero(){
        ViewController.correctScore = 0
    }
    
    //Updating color of UIButton
    func updateColor(color: UIColor, button: UIButton) {
        button.backgroundColor = color
    }
    
    //Show right answer by checking the string matching
    @objc func showRightAnswer(right: String) {
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

