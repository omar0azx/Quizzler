//
//  Question.swift
//  Quizzler
//
//  Created by omar alzhrani on 12/08/1441 AH.
//  Copyright © 1441 London App Brewery. All rights reserved.
//
import UIKit
import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    let theImage : UIImage
    
    
    init(text: String, correctAnswer: Bool, image: UIImage) {
        questionText = text
        answer = correctAnswer
        theImage = image
    }
    
}
