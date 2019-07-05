//
//  TheQuizViewController.swift
//  EnhancedQuizApp
//
//  Created by Raymond Choy on 7/2/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//



import UIKit


class quizCell: UITableViewCell{
    @IBOutlet weak var answerLabel: UILabel!
}

class TheQuizViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var quizModule: Quiz!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizAnswerList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        answerCheck = quizAnswerList[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: "quizCell") as! quizCell
        cell.answerLabel.text = quizAnswerList[indexPath.row]
        return cell
    }
    
    var answerCheck = "nothing"
    var quizAnswerList = ["answer 1", "answer 2", "answer 3", "answer 4"]
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBAction func actionSubmit(_ sender: Any) {
        chooseAnswer()
    }
    
    @IBOutlet weak var quizTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quizTable.delegate = self
        quizTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animate: Bool){
        quizModule.reset()
        settup(check: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func settup(check: Bool){
        if(check){
            setCount()
            setQuestion()
            setChoices()
            quizTable.reloadData()
        }else{
                performSegue(withIdentifier: "QuizToEnd", sender: nil)
            }
        }

    func setCount(){
        var temp = ""
        temp.append(String(quizModule.giveCurrentQuestionValue()))
        temp.append("/")
        temp.append(String(quizModule.giveTotalQuestionCount()))
        
        countLabel.text = temp
    }

    func setQuestion(){
        questionLabel.text = quizModule.giveCurrentQuestion().giveQuestion()
    }
    
    func setChoices(){
        quizAnswerList = quizModule.giveCurrentQuestion().giveChoices()
        answerCheck = quizAnswerList[0]
    }
    
    func chooseAnswer() {
        quizModule.inputAnswer(input: quizModule.giveCurrentQuestion().checkAnswer(input: answerCheck))
        settup(check: quizModule.moveToNextQuestion())
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "QuizToEnd"){
            var seg = segue.destination as! EndViewController
            seg.quizModule = self.quizModule
        }
        
    }


}
