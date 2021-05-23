//
//  ApiResponse.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-12.
//

import Foundation

// MARK: - Opponents
public struct Opponents: Codable {
    let total, average: [String: Double]
}

// MARK: - Player
public struct Player: Codable {
    let id, fullName, firstName, lastName: String
    let position, primaryPosition, jerseyNumber, srID: String
    let reference: String
    let total, average: [String: Double]

    enum CodingKeys: String, CodingKey {
        case id
        case fullName = "full_name"
        case firstName = "first_name"
        case lastName = "last_name"
        case position
        case primaryPosition = "primary_position"
        case jerseyNumber = "jersey_number"
        case srID = "sr_id"
        case reference, total, average
    }
}

public struct ApiResponse: Codable{
        let league: League
        let season: Season
        let conferences: [Conference]
    
}

// MARK: - League
public struct League: Codable {
    let id, name, alias: String
}

// MARK: - Conference
public struct Conference: Codable {
    let id, name, alias: String
    let divisions: [Division]?
}


// MARK: - League
public struct Division: Codable {
    let id, name, alias: String
    let teams: [Team]?
}



// MARK: - Team
public struct Team: Codable {
    let id, name, market: String
    let wins, losses: Int
    let winPct, pointsFor, pointsAgainst, pointDiff: Double
    let srID, reference: String
    let gamesBehind: GamesBehind
    let streak: Streak
    let calcRank: CalcRank
    let records: [Record]

    enum CodingKeys: String, CodingKey {
        case id, name, market, wins, losses
        case winPct = "win_pct"
        case pointsFor = "points_for"
        case pointsAgainst = "points_against"
        case pointDiff = "point_diff"
        case srID = "sr_id"
        case reference
        case gamesBehind = "games_behind"
        case streak
        case calcRank = "calc_rank"
        case records
    }
}

// MARK: - CalcRank
public struct CalcRank: Codable {
    let divRank, confRank: Int
    let confTiebreak: String?

    enum CodingKeys: String, CodingKey {
        case divRank = "div_rank"
        case confRank = "conf_rank"
        case confTiebreak = "conf_tiebreak"
    }
}

// MARK: - GamesBehind
public struct GamesBehind: Codable {
    let league, conference, division: Double
}

// MARK: - Record
public struct Record: Codable {
    let recordType: RecordType
    let wins, losses: Int
    let winPct: Double

    enum CodingKeys: String, CodingKey {
        case recordType = "record_type"
        case wins, losses
        case winPct = "win_pct"
    }
}

public enum RecordType: String, Codable {
    case atlantic = "atlantic"
    case below500 = "below_500"
    case central = "central"
    case conference = "conference"
    case division = "division"
    case equalRebounds = "equal_rebounds"
    case equalTurnovers = "equal_turnovers"
    case fewerTurnovers = "fewer_turnovers"
    case home = "home"
    case last10 = "last_10"
    case last10_Home = "last_10_home"
    case last10_Road = "last_10_road"
    case leadsFieldGoalPct = "leads_field_goal_pct"
    case leadsRebounds = "leads_rebounds"
    case northwest = "northwest"
    case opponentFewerTurnovers = "opponent_fewer_turnovers"
    case opponentLeadsFieldGoalPct = "opponent_leads_field_goal_pct"
    case opponentLeadsRebounds = "opponent_leads_rebounds"
    case opponentScores100_OrMore = "opponent_scores_100_or_more"
    case over500 = "over_500"
    case overtime = "overtime"
    case pacific = "pacific"
    case road = "road"
    case scores100_OrMore = "scores_100_or_more"
    case southeast = "southeast"
    case southwest = "southwest"
    case tenPoints = "ten_points"
    case threePoints = "three_points"
}

// MARK: - Streak
public struct Streak: Codable {
    let kind: Kind
    let length: Int
}

public enum Kind: String, Codable {
    case loss = "loss"
    case win = "win"
}

// MARK: - Season
public struct Season: Codable {
    let id: String
    let year: Int
    let type: String
}
