//
//  EndViewController.swift
//  EnhancedQuizApp
//
//  Created by Raymond Choy on 7/2/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {
    
    var quizModule: Quiz!

    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var inCorrectLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup(){
        setCorrect()
        setIncorrect()
        setTotal()
    }
    
    func setCorrect(){
        correctLabel.text = String(quizModule.giveCorrectcount())
    }
    
    func setIncorrect(){
        inCorrectLabel.text = String(quizModule.giveIncorrectQuestionCount())
    }
    
    func setTotal(){
        totalLabel.text = String(quizModule.giveTotalQuestionCount())
    }

}
