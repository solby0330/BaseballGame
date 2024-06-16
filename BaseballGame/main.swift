//
//  main.swift
//  BaseballGame
//
//  Created by 김솔비 on 6/12/24.
//


let game = GameLogic()

let correctAnswer = game.makeAnswer()
print(correctAnswer)

let useAnswer = game.makeUserAnswer()
print(useAnswer)

game.compare(correctAnswer, useAnswer)

