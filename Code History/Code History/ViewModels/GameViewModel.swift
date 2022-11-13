//
//  GameViewModel.swift
//  CodeHistory
//
//  Created by Abdullah Bilgin on 11/13/22.
//

import SwiftUI

// 1: create a new object type named "GameViewModel" that conforms to the "ObservableObject" protocol
class GameViewModel: ObservableObject {
    
    // MARK: - Published properties
    // 2: We add a property named "game" of type "Game". This is wrapped in the @Published modifier so our GameViewModel can notify any observers when changes are made to it like when a user makes a guess.
    @Published private var game = Game()
    
    // MARK: - Internal properties
    // 3: A computed variable named "currentQuestion". This returns the game’s current question.
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    //4: A variable named "questionProgressText" that returns the String to be displayed at the top of the screen to indicate the user’s progress.
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
}