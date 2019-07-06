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
    
    @IBOutlet weak var InCorrectLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        settup()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func settup(){
        setCorrect()
        setIncoorect()
        setTotal()
    }
    
    func setCorrect(){
        correctLabel.text = String(quizModule.giveCorrectcount())
    }
    
    func setIncoorect(){
        InCorrectLabel.text = String(quizModule.giveIncorrectQuestionCount())
    }
    
    func setTotal(){
        TotalLabel.text = String(quizModule.giveTotalQuestionCount())
    }

}
