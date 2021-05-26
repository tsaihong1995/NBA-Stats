//
//  Constants.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import Foundation

public class Constants {
    public class Keys {
        enum API: String{
            case key1 = "x-rapidapi-host"
            case key2 = "x-rapidapi-key"
            case value1 = "api-nba-v1.p.rapidapi.com"
            case value2 = ""
        }
    }
}

let TeamName = [
    "583ecb8f-fb46-11e1-82cb-f4ce4684ea4c" : "Hawks", "583eccfa-fb46-11e1-82cb-f4ce4684ea4c" : "Celtics", "583ec9d6-fb46-11e1-82cb-f4ce4684ea4c": "Nets", "583ec97e-fb46-11e1-82cb-f4ce4684ea4c": "Hornets", "583ec5fd-fb46-11e1-82cb-f4ce4684ea4c": "Bulls",
    "583ec773-fb46-11e1-82cb-f4ce4684ea4c" : "Cavaliers", "583ecf50-fb46-11e1-82cb-f4ce4684ea4c" : "Mavericks", "583ed102-fb46-11e1-82cb-f4ce4684ea4c": "Nuggets", "583ec928-fb46-11e1-82cb-f4ce4684ea4c" : "Pistons", "583ec825-fb46-11e1-82cb-f4ce4684ea4c" : "Warriors",
    "583ecb3a-fb46-11e1-82cb-f4ce4684ea4c": "Rockets", "583ec7cd-fb46-11e1-82cb-f4ce4684ea4c": "Pacers", "583ecdfb-fb46-11e1-82cb-f4ce4684ea4c": "Clippers", "583ecae2-fb46-11e1-82cb-f4ce4684ea4c": "Lakers", "583eca88-fb46-11e1-82cb-f4ce4684ea4c": "Grizzlies",
    "583ecea6-fb46-11e1-82cb-f4ce4684ea4c": "Heat", "583ecefd-fb46-11e1-82cb-f4ce4684ea4c": "Bucks", "583eca2f-fb46-11e1-82cb-f4ce4684ea4c": "Timberwolves", "583ecc9a-fb46-11e1-82cb-f4ce4684ea4c": "Pelicans", "583ec70e-fb46-11e1-82cb-f4ce4684ea4c": "Knicks",
    "583ecfff-fb46-11e1-82cb-f4ce4684ea4c": "Thunder", "583ed157-fb46-11e1-82cb-f4ce4684ea4c": "Magic", "583ec87d-fb46-11e1-82cb-f4ce4684ea4c": "76ers", "583ecfa8-fb46-11e1-82cb-f4ce4684ea4c": "Suns", "583ed056-fb46-11e1-82cb-f4ce4684ea4c": "Trail Blazers",
    "583ed0ac-fb46-11e1-82cb-f4ce4684ea4c": "Kings", "583ecd4f-fb46-11e1-82cb-f4ce4684ea4c": "Spurs", "583ecda6-fb46-11e1-82cb-f4ce4684ea4c": "Raptors", "583ece50-fb46-11e1-82cb-f4ce4684ea4c": "Jazz", "583ec8d4-fb46-11e1-82cb-f4ce4684ea4c": "Wizards"
]




let myTeam = Team(id: "583ece50-fb46-11e1-82cb-f4ce4684ea4c", name: "Jazz", market: "Utah", wins: 51, losses: 20, winPct: 0.718, pointsFor: 116.35, pointsAgainst: 107.28, pointDiff: 9.07, srID: "sr:team:3434", reference: "1610612762", gamesBehind: GamesBehind(league: 0.0, conference: 0.0, division: 0.0), streak: Streak(kind: Kind.win, length: 1), calcRank: CalcRank(divRank: 1, confRank: 1, confTiebreak: "1"), records: [Record(recordType: RecordType.last10, wins: 7, losses: 3 , winPct: 0.7)])

let myConference = Conference(id: "Default", name: "East", alias: "EAST", divisions: nil)

let testTeamVM = TeamViewModel(team: myTeam, teamListVM: TeamListViewModel())
