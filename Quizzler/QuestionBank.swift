//
//  QuestionBank.swift
//  Quizzler
//
//  Created by omar alzhrani on 12/08/1441 AH.
//  Copyright © 1441 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init( ) {
     
        // Add the Question to the list of questions
        list.append(Question(text: "هل هذا علم السعودية ؟", correctAnswer: true , image: #imageLiteral(resourceName: "saudi")))
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "هل هذا علم الامارات ؟", correctAnswer: true, image: #imageLiteral(resourceName: "ua")))
        
        list.append(Question(text: "هل هذه مكه ؟", correctAnswer: true, image: #imageLiteral(resourceName: "macca")))
        
        list.append(Question(text: "هل هذا ملك السعودية ؟", correctAnswer: true, image: #imageLiteral(resourceName: "unnamed")))
        
        list.append(Question(text: "هل انت خبل ؟", correctAnswer: true, image: #imageLiteral(resourceName: "kbl")))
        
        list.append(Question(text: "هل هذا البرج بالسعوديه ؟", correctAnswer: false, image: #imageLiteral(resourceName: "brg Klefa")))
        
        list.append(Question(text: "هل هذه الصره تدل على الفضاء", correctAnswer: true, image: #imageLiteral(resourceName: "azzam")))
        
        list.append(Question(text: "هل هذا علم مصر ؟", correctAnswer: false, image: #imageLiteral(resourceName: "egypt")))
        
        list.append(Question(text: "", correctAnswer: true, image: #imageLiteral(resourceName: "saudi")))
        
        list.append(Question(text: "", correctAnswer: true, image: #imageLiteral(resourceName: "saudi")))
        
        list.append(Question(text: "", correctAnswer: false, image: #imageLiteral(resourceName: "saudi")))
        
        list.append(Question(text: "", correctAnswer: false, image: #imageLiteral(resourceName: "saudi")))
        
        list.append(Question(text: "هل انت اكبر من ١٨ ؟", correctAnswer: true, image: #imageLiteral(resourceName: "saudi")))
        
    }
}
