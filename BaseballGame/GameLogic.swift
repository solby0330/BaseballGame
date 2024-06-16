//
//  GameLogic.swift
//  BaseballGame
//
//  Created by 김솔비 on 6/12/24.
//

import Foundation

struct GameLogic {
    func makeAnswer() -> [Int] {
        var randomNumbers:Set<Int> = []
        
        while randomNumbers.count < 3 {
            let number = Int.random(in: 1...9)
            randomNumbers.insert(number)
        }
        
        return Array(randomNumbers)
        
        //        print(randomNumbers)
        //
        //        //Set 배열 고정해주기
        //        print(Array(randomNumbers))
    }
    
    func makeUserAnswer() -> [Int] {
        let userAnswer = readLine()!
        
        let inputNumbers = userAnswer.map { Int(String($0))! }
        return inputNumbers
    }
    
    func compare(_ a: [Int], _ b: [Int]) {
        var ball = 0
        var strike = 0
        
        //자리가 다르고, 값만 같으면 1 ball
        //자리가 같고, 값이 같으면 1 strike
        
        if a[0] == b[0] {
            strike += 1
        }
        if a[1] == b[1] {
            strike += 1
        }
        if a[2] == b[2] {
            strike += 1
        }
        
        if a[0] == b[1] || a[0] == b[2] {
            ball += 1
        }
        if a[1] == b[2] {
            ball += 1
        }
        if strike == 3 {
            print("정답입니다")
        } else if strike == 0 && ball == 0 {
            print("nothing")
        } else {
            print("\(strike) 스트라이크 \(ball) 볼")
        }
    }
}

