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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizAnswerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: "quizCell") as! quizCell
        cell.answerLabel.text = quizAnswerList[indexPath.row]
        return cell
    }
    
    
    
    var quizAnswerList = ["answer 1", "answer 2", "answer 3", "answer 4"]
    @IBOutlet weak var questionLabel: UILabel!
    @IBAction func actionSubmit(_ sender: Any) {
    }
    
    
    @IBOutlet weak var quizTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quizTable.delegate = self
        quizTable.dataSource = self
        // Do any additional setup after loading the view.
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
