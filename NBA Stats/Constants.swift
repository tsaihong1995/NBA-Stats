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

let myTeamPlayer = TeamPlayersViewModel(teamVM: testTeamVM)

let myPlayer = TeamSeasonalStats.Players(id: "03d77214-5780-4715-8df2-13de3af5ea2d", fullName: "Jordan Clarkson", firstName: "Jordan", lastName: "Clarkson", position: "G", primaryPosition: "SG", jerseyNumber: "00", srID: "sr:player:607936", reference: "203903", total: TeamSeasonalStats.Players.Total(gamesPlayed: 67, gamesStarted: 1, minutes: 1785.0, fieldGoalsMade: 446, fieldGoalsAtt: 1055, fieldGoalsPct: 0.423, twoPointsMade: 244, twoPointsAtt: 468, twoPointsPct: 0.521, threePointsMade: 202, threePointsAtt: 587, threePointsPct: 0.344, blockedAtt: 38, freeThrowsMade: 124, freeThrowsAtt: 139, freeThrowsPct: 0.892, offensiveRebounds: 272, defensiveRebounds: 165, rebounds: 112, assists: 147, turnovers: 112, assistsTurnoverRatio: 1.47, steals: 59, blocks: 10, personalFouls: 107, techFouls: 2, points: 1218, flagrantFouls: 0, ejections: 0, foulouts: 0, trueShootingAtt: 1116.16, trueShootingPct: 0.546, efficiency: 988, pointsOffTurnovers: 165, pointsInPaint: 456, pointsInPaintMade: 228, pointsInPaintAtt: 422, pointsInPaintPct: 0.54, effectiveFgPct: 0.518, doubleDoubles: 0, tripleDoubles: 0, foulsDrawn: 120, offensiveFouls: 13, fastBreakPts: 151, fastBreakAtt: 124, fastBreakMade: 55, fastBreakPct: 0.444, coachEjections: 0, secondChancePct: 0.393, secondChancePts: 88, secondChanceAtt: 84, secondChanceMade: 33, minus: 4052, plus: 4337, coachTechFouls: 0 ), average: TeamSeasonalStats.Players.Average(minutes: 26.6, points: 18.2, offRebounds: 0.69, defRebounds: 3.37, rebounds: 4.06, assists: 2.5, steals: 0.88, blocks: 0.15, turnovers: 1.67, personalFouls: 1.6, flagrantFouls: 0.0, blockedAtt: 0.57, fieldGoalsMade: 6.66, fieldGoalsAtt: 15.75, threePointsMade: 3.01, threePointsAtt: 8.76, freeThrowsMade: 1.85, freeThrowsAtt: 2.07, twoPointsMade: 3.64, twoPointsAtt: 6.99, efficiency: 14.75, trueShootingAtt: 16.66, pointsOffTurnovers: 2.43, pointsInPaintMade: 3.4, pointsInPaintAtt: 6.3, pointsInPaint: 6.81, foulsDrawn: 1.79, offensiveFouls: 0.19, fastBreakPts: 2.25, fastBreakAtt: 1.85, fastBreakMade: 0.82, secondChancePts: 1.31, secondChanceAtt: 1.25, secondChanceMade: 0.49))


