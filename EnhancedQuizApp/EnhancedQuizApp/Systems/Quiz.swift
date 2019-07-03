//
//  Quiz.swift
//  EnhancedQuizApp
//
//  Created by Raymond Choy on 7/2/19.
//  Copyright © 2019 thechoygroup. All rights reserved.
//

import Foundation

class Quiz{
    private var questionList: [Question]
    private var currentQuestion: Int
    
    init(){
        currentQuestion = 0
        questionList = [Question.init(que: "How do you say 'greetings' in Hawaiian?", ans: "Aloha", c1: "Āwīwī", c2: "ʻAina", c3: "Mea hou", c4: "Aloha"),Question.init(que: "How do you say 'how are you' in Japanese?", ans: "Ogenkidesuka?", c1: "Anatahadare?", c2: "Koko wa doko?", c3: "Ogenkidesuka?", c4: "Ikura?"),Question.init(que: "How do you say 'you’re beautiful' in Chinese?", ans: "Nǐ fēicháng měi", c1: "Nǐ hěn féipàng", c2: "Nǐ fēicháng měi", c3: "Nǐ zhēn yǒuqù", c4: "Nǐ cuòle"),Question.init(que: "How do you say 'good bye' in Russian?", ans: "Proshchay", c1: "Dobroy nochi", c2: "Dobryy den'", c3: "Dobroye utro", c4: "Proshchay"),Question.init(que: "How do you say 'congratulations' in Portuguese?", ans: "Parabéns", c1: "Otima", c2: "Parabéns", c3: "Fantástica", c4: "Errada"),Question.init(que: "How do you say 'thank you' in Arabic?", ans: "Shukraan lakum", c1: "Shukraan lakum", c2: "Wadaeaan", c3: "Marhabaan", c4: "Eazim"),Question.init(que: "How do you say 'you’re funny' in Filipino?", ans: "Nakakatawa ka", c1: "Mainit ka", c2: "Ikaw ay mataba", c3: "Ikaw ay mali", c4: "Nakakatawa ka"),Question.init(que: "How do you say 'you’re hot' in Ukrainian?", ans: "Vy haryachi", c1: "Vy zhyrni", c2: "Vy haryachi", c3: "Ty tupyy", c4: "Vy bahati"),Question.init(que: "How do you say 'we won' in Thai?", ans: "Reā chna", c1: "Reā chna", c2: "Reā s̄ūỵ s̄eīy", c3: "Reā leik læ̂w", c4: "Reā l̂m lng"),Question.init(que: "How do you say 'hello handsome' in French?", ans: "Salut beauté", c1: "Bonjour le monde", c2: "Bonjour mère", c3: "Salut beauté", c4: "Salut bébé")]
    }
}
