//
//  Team.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import Foundation

struct Team: Codable{
    
    let teamId: String?
    let win: String?
    let loss: String?
    let lastTenWin: String?
    let lastTenLoss: String?
    let shortName: String?
    let conference: Conference?
    let winPercentage: String?
    let lossPercentage: String?
    let winStreak: String?
    
    struct Conference: Codable {
        let name: String?
        let rank: String?
    }
    
}

extension Team {
    func getTeamName(_ myTeamId: String) -> String {
        return TeamName[Int(myTeamId) ?? 0] ?? "Default Team"
    }
}
