//
//  Game.swift
//  Bullseye
//
//  Created by Timothy Wong on 6/3/22.
//

import Foundation

struct LeaderBoardEntry{
    let score: Int
    let date: Date
}

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderboardEntries: [LeaderBoardEntry] = []
    
    init(loadTestData: Bool = false) {
        if loadTestData{
            leaderboardEntries.append(LeaderBoardEntry(score: 100, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 80, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 200, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 50, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 20, date: Date() ))
        }
    }
    
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        let bonus: Int
        if difference == 0{
            bonus = 100
        }
        else if difference <= 2{
            bonus = 50
        }
        else{
            bonus = 0
        }
        
        return 100 - difference + bonus
    }
    
    mutating func addToLeaderboard(points: Int){
        leaderboardEntries.append(LeaderBoardEntry(score: points, date: Date()))
        leaderboardEntries.sort { $0.score > $1.score }
    }
    
    mutating func startNewRound(points: Int){
        score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderboard(points: points)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}

