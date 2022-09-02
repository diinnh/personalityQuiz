//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Enduser on 8/9/22.
//


import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐕", cat = "🐈", rabbit = "🐇", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are very outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "You are mischievous, yet mild-tempered"
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You believe in going with the flow, taking it easy and are wise beyond your years."
        }
    }
}
