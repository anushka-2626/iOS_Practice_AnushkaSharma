//
//  QuestionViewController.swift
//  Personality Quiz
//
//  Created by Student on 23/07/25.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var questions : [Question] = [
        Question(text: " Which food do you like most?", type: .single, answers: [Answer(text: "Steak", type: .lion), Answer(text: "Corn", type: .turtle), Answer(text: "Pizza", type: .rabbit), Answer(text: "Fish", type: .cat)]),
        Question(text: "What is your favorite color?", type: .multiple, answers: [Answer(text: "Red", type: .lion), Answer(text: "Blue", type: .turtle), Answer(text: "Yellow", type: .rabbit), Answer(text: "Green", type: .cat)]),
        Question(text: "How much do you enjoy car rides?", type: .ranged, answers: [Answer(text: "i don't like car rides", type: .cat),Answer(text: "i get a little bit excited", type: .rabbit),Answer(text: "i barely notice them", type: .turtle),Answer(text: "i love car rides", type: .lion)])
    ]
    
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
