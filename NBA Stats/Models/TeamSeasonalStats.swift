//
//  TeamSeasonalStats.swift
//  NBA Stats
//
//  Created by Hung-Chun Tsai on 2021-05-22.
//

import Foundation

struct TeamSeasonalStats: Codable {
  let id: String
  let name: String
  let market: String
  let srID: String
  let reference: String
  let season: Season
  let ownRecord: OwnRecord
  let opponents: Opponents
  let players: [Players]

  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case market
    case srID = "sr_id"
    case reference
    case season
    case ownRecord = "own_record"
    case opponents
    case players
  }
}

extension TeamSeasonalStats {
  struct Season: Codable {
    let id: String
    let year: Int
    let type: String
  }
}

extension TeamSeasonalStats {
  struct OwnRecord: Codable {
    let total: Total
    let average: Average
  }
}

extension TeamSeasonalStats.OwnRecord {
  struct Total: Codable {
    let gamesPlayed: Int
    let minutes: Double
    let fieldGoalsMade: Int
    let fieldGoalsAtt: Int
    let fieldGoalsPct: Double
    let twoPointsMade: Int
    let twoPointsAtt: Int
    let twoPointsPct: Double
    let threePointsMade: Int
    let threePointsAtt: Int
    let threePointsPct: Double
    let blockedAtt: Int
    let freeThrowsMade: Int
    let freeThrowsAtt: Int
    let freeThrowsPct: Double
    let offensiveRebounds: Int
    let defensiveRebounds: Int
    let rebounds: Int
    let assists: Int
    let turnovers: Int
    let assistsTurnoverRatio: Double
    let steals: Int
    let blocks: Int
    let personalFouls: Int
    let techFouls: Int
    let points: Int
    let fastBreakPts: Int
    let flagrantFouls: Int
    let pointsOffTurnovers: Int
    let secondChancePts: Int
    let ejections: Int
    let foulouts: Int
    let pointsInPaint: Int
    let efficiency: Int
    let trueShootingAtt: Double
    let trueShootingPct: Double
    let pointsInPaintMade: Int
    let pointsInPaintAtt: Int
    let pointsInPaintPct: Double
    let effectiveFgPct: Double
    let benchPoints: Int
    let foulsDrawn: Int
    let offensiveFouls: Int
    let teamTechFouls: Int
    let defensiveAssists: Int
    let fastBreakAtt: Int
    let fastBreakMade: Int
    let fastBreakPct: Double
    let technicalOther: Int
    let coachEjections: Int
    let pointsAgainst: Int
    let teamDefensiveRebounds: Int
    let teamOffensiveRebounds: Int
    let secondChanceAtt: Int
    let secondChanceMade: Int
    let secondChancePct: Double
    let coachTechFouls: Int
    let teamFouls: Int
    let totalRebounds: Int
    let totalFouls: Int

    private enum CodingKeys: String, CodingKey {
      case gamesPlayed = "games_played"
      case minutes
      case fieldGoalsMade = "field_goals_made"
      case fieldGoalsAtt = "field_goals_att"
      case fieldGoalsPct = "field_goals_pct"
      case twoPointsMade = "two_points_made"
      case twoPointsAtt = "two_points_att"
      case twoPointsPct = "two_points_pct"
      case threePointsMade = "three_points_made"
      case threePointsAtt = "three_points_att"
      case threePointsPct = "three_points_pct"
      case blockedAtt = "blocked_att"
      case freeThrowsMade = "free_throws_made"
      case freeThrowsAtt = "free_throws_att"
      case freeThrowsPct = "free_throws_pct"
      case offensiveRebounds = "offensive_rebounds"
      case defensiveRebounds = "defensive_rebounds"
      case rebounds
      case assists
      case turnovers
      case assistsTurnoverRatio = "assists_turnover_ratio"
      case steals
      case blocks
      case personalFouls = "personal_fouls"
      case techFouls = "tech_fouls"
      case points
      case fastBreakPts = "fast_break_pts"
      case flagrantFouls = "flagrant_fouls"
      case pointsOffTurnovers = "points_off_turnovers"
      case secondChancePts = "second_chance_pts"
      case ejections
      case foulouts
      case pointsInPaint = "points_in_paint"
      case efficiency
      case trueShootingAtt = "true_shooting_att"
      case trueShootingPct = "true_shooting_pct"
      case pointsInPaintMade = "points_in_paint_made"
      case pointsInPaintAtt = "points_in_paint_att"
      case pointsInPaintPct = "points_in_paint_pct"
      case effectiveFgPct = "effective_fg_pct"
      case benchPoints = "bench_points"
      case foulsDrawn = "fouls_drawn"
      case offensiveFouls = "offensive_fouls"
      case teamTechFouls = "team_tech_fouls"
      case defensiveAssists = "defensive_assists"
      case fastBreakAtt = "fast_break_att"
      case fastBreakMade = "fast_break_made"
      case fastBreakPct = "fast_break_pct"
      case technicalOther = "technical_other"
      case coachEjections = "coach_ejections"
      case pointsAgainst = "points_against"
      case teamDefensiveRebounds = "team_defensive_rebounds"
      case teamOffensiveRebounds = "team_offensive_rebounds"
      case secondChanceAtt = "second_chance_att"
      case secondChanceMade = "second_chance_made"
      case secondChancePct = "second_chance_pct"
      case coachTechFouls = "coach_tech_fouls"
      case teamFouls = "team_fouls"
      case totalRebounds = "total_rebounds"
      case totalFouls = "total_fouls"
    }
  }
}

extension TeamSeasonalStats.OwnRecord {
  struct Average: Codable {
    let fastBreakPts: Double
    let pointsOffTurnovers: Double
    let secondChancePts: Double
    let minutes: Double
    let points: Double
    let offRebounds: Double
    let defRebounds: Double
    let rebounds: Double
    let assists: Double
    let steals: Double
    let blocks: Double
    let turnovers: Double
    let personalFouls: Double
    let flagrantFouls: Double
    let blockedAtt: Double
    let fieldGoalsMade: Double
    let fieldGoalsAtt: Double
    let threePointsMade: Double
    let threePointsAtt: Double
    let freeThrowsMade: Double
    let freeThrowsAtt: Double
    let twoPointsMade: Double
    let twoPointsAtt: Double
    let pointsInPaint: Double
    let efficiency: Double
    let trueShootingAtt: Double
    let pointsInPaintAtt: Double
    let pointsInPaintMade: Double
    let benchPoints: Double
    let foulsDrawn: Double
    let offensiveFouls: Double
    let fastBreakAtt: Double
    let fastBreakMade: Double
    let secondChanceAtt: Double
    let secondChanceMade: Double

    private enum CodingKeys: String, CodingKey {
      case fastBreakPts = "fast_break_pts"
      case pointsOffTurnovers = "points_off_turnovers"
      case secondChancePts = "second_chance_pts"
      case minutes
      case points
      case offRebounds = "off_rebounds"
      case defRebounds = "def_rebounds"
      case rebounds
      case assists
      case steals
      case blocks
      case turnovers
      case personalFouls = "personal_fouls"
      case flagrantFouls = "flagrant_fouls"
      case blockedAtt = "blocked_att"
      case fieldGoalsMade = "field_goals_made"
      case fieldGoalsAtt = "field_goals_att"
      case threePointsMade = "three_points_made"
      case threePointsAtt = "three_points_att"
      case freeThrowsMade = "free_throws_made"
      case freeThrowsAtt = "free_throws_att"
      case twoPointsMade = "two_points_made"
      case twoPointsAtt = "two_points_att"
      case pointsInPaint = "points_in_paint"
      case efficiency
      case trueShootingAtt = "true_shooting_att"
      case pointsInPaintAtt = "points_in_paint_att"
      case pointsInPaintMade = "points_in_paint_made"
      case benchPoints = "bench_points"
      case foulsDrawn = "fouls_drawn"
      case offensiveFouls = "offensive_fouls"
      case fastBreakAtt = "fast_break_att"
      case fastBreakMade = "fast_break_made"
      case secondChanceAtt = "second_chance_att"
      case secondChanceMade = "second_chance_made"
    }
  }
}

extension TeamSeasonalStats {
  struct Opponents: Codable {
    let total: Total
    let average: Average
  }
}

extension TeamSeasonalStats.Opponents {
  struct Total: Codable {
    let gamesPlayed: Int
    let minutes: Double
    let fieldGoalsMade: Int
    let fieldGoalsAtt: Int
    let fieldGoalsPct: Double
    let twoPointsMade: Int
    let twoPointsAtt: Int
    let twoPointsPct: Double
    let threePointsMade: Int
    let threePointsAtt: Int
    let threePointsPct: Double
    let blockedAtt: Int
    let freeThrowsMade: Int
    let freeThrowsAtt: Int
    let freeThrowsPct: Double
    let offensiveRebounds: Int
    let defensiveRebounds: Int
    let rebounds: Int
    let assists: Int
    let turnovers: Int
    let assistsTurnoverRatio: Double
    let steals: Int
    let blocks: Int
    let personalFouls: Int
    let techFouls: Int
    let points: Int
    let fastBreakPts: Int
    let flagrantFouls: Int
    let pointsOffTurnovers: Int
    let secondChancePts: Int
    let ejections: Int
    let foulouts: Int
    let pointsInPaint: Int
    let efficiency: Int
    let trueShootingAtt: Double
    let trueShootingPct: Double
    let pointsInPaintMade: Int
    let pointsInPaintAtt: Int
    let pointsInPaintPct: Double
    let effectiveFgPct: Double
    let benchPoints: Int
    let foulsDrawn: Int
    let offensiveFouls: Int
    let teamTechFouls: Int
    let defensiveAssists: Int
    let fastBreakAtt: Int
    let fastBreakMade: Int
    let fastBreakPct: Double
    let technicalOther: Int
    let coachEjections: Int
    let pointsAgainst: Int
    let teamDefensiveRebounds: Int
    let teamOffensiveRebounds: Int
    let secondChanceAtt: Int
    let secondChanceMade: Int
    let secondChancePct: Double
    let coachTechFouls: Int
    let teamFouls: Int
    let totalRebounds: Int
    let totalFouls: Int

    private enum CodingKeys: String, CodingKey {
      case gamesPlayed = "games_played"
      case minutes
      case fieldGoalsMade = "field_goals_made"
      case fieldGoalsAtt = "field_goals_att"
      case fieldGoalsPct = "field_goals_pct"
      case twoPointsMade = "two_points_made"
      case twoPointsAtt = "two_points_att"
      case twoPointsPct = "two_points_pct"
      case threePointsMade = "three_points_made"
      case threePointsAtt = "three_points_att"
      case threePointsPct = "three_points_pct"
      case blockedAtt = "blocked_att"
      case freeThrowsMade = "free_throws_made"
      case freeThrowsAtt = "free_throws_att"
      case freeThrowsPct = "free_throws_pct"
      case offensiveRebounds = "offensive_rebounds"
      case defensiveRebounds = "defensive_rebounds"
      case rebounds
      case assists
      case turnovers
      case assistsTurnoverRatio = "assists_turnover_ratio"
      case steals
      case blocks
      case personalFouls = "personal_fouls"
      case techFouls = "tech_fouls"
      case points
      case fastBreakPts = "fast_break_pts"
      case flagrantFouls = "flagrant_fouls"
      case pointsOffTurnovers = "points_off_turnovers"
      case secondChancePts = "second_chance_pts"
      case ejections
      case foulouts
      case pointsInPaint = "points_in_paint"
      case efficiency
      case trueShootingAtt = "true_shooting_att"
      case trueShootingPct = "true_shooting_pct"
      case pointsInPaintMade = "points_in_paint_made"
      case pointsInPaintAtt = "points_in_paint_att"
      case pointsInPaintPct = "points_in_paint_pct"
      case effectiveFgPct = "effective_fg_pct"
      case benchPoints = "bench_points"
      case foulsDrawn = "fouls_drawn"
      case offensiveFouls = "offensive_fouls"
      case teamTechFouls = "team_tech_fouls"
      case defensiveAssists = "defensive_assists"
      case fastBreakAtt = "fast_break_att"
      case fastBreakMade = "fast_break_made"
      case fastBreakPct = "fast_break_pct"
      case technicalOther = "technical_other"
      case coachEjections = "coach_ejections"
      case pointsAgainst = "points_against"
      case teamDefensiveRebounds = "team_defensive_rebounds"
      case teamOffensiveRebounds = "team_offensive_rebounds"
      case secondChanceAtt = "second_chance_att"
      case secondChanceMade = "second_chance_made"
      case secondChancePct = "second_chance_pct"
      case coachTechFouls = "coach_tech_fouls"
      case teamFouls = "team_fouls"
      case totalRebounds = "total_rebounds"
      case totalFouls = "total_fouls"
    }
  }
}

extension TeamSeasonalStats.Opponents {
  struct Average: Codable {
    let fastBreakPts: Double
    let pointsOffTurnovers: Double
    let secondChancePts: Double
    let minutes: Double
    let points: Double
    let offRebounds: Double
    let defRebounds: Double
    let rebounds: Double
    let assists: Double
    let steals: Double
    let blocks: Double
    let turnovers: Double
    let personalFouls: Double
    let flagrantFouls: Double
    let blockedAtt: Double
    let fieldGoalsMade: Double
    let fieldGoalsAtt: Double
    let threePointsMade: Double
    let threePointsAtt: Double
    let freeThrowsMade: Double
    let freeThrowsAtt: Double
    let twoPointsMade: Double
    let twoPointsAtt: Double
    let pointsInPaint: Double
    let efficiency: Double
    let trueShootingAtt: Double
    let pointsInPaintAtt: Double
    let pointsInPaintMade: Double
    let benchPoints: Double
    let foulsDrawn: Double
    let offensiveFouls: Double
    let fastBreakAtt: Double
    let fastBreakMade: Double
    let secondChanceAtt: Double
    let secondChanceMade: Double

    private enum CodingKeys: String, CodingKey {
      case fastBreakPts = "fast_break_pts"
      case pointsOffTurnovers = "points_off_turnovers"
      case secondChancePts = "second_chance_pts"
      case minutes
      case points
      case offRebounds = "off_rebounds"
      case defRebounds = "def_rebounds"
      case rebounds
      case assists
      case steals
      case blocks
      case turnovers
      case personalFouls = "personal_fouls"
      case flagrantFouls = "flagrant_fouls"
      case blockedAtt = "blocked_att"
      case fieldGoalsMade = "field_goals_made"
      case fieldGoalsAtt = "field_goals_att"
      case threePointsMade = "three_points_made"
      case threePointsAtt = "three_points_att"
      case freeThrowsMade = "free_throws_made"
      case freeThrowsAtt = "free_throws_att"
      case twoPointsMade = "two_points_made"
      case twoPointsAtt = "two_points_att"
      case pointsInPaint = "points_in_paint"
      case efficiency
      case trueShootingAtt = "true_shooting_att"
      case pointsInPaintAtt = "points_in_paint_att"
      case pointsInPaintMade = "points_in_paint_made"
      case benchPoints = "bench_points"
      case foulsDrawn = "fouls_drawn"
      case offensiveFouls = "offensive_fouls"
      case fastBreakAtt = "fast_break_att"
      case fastBreakMade = "fast_break_made"
      case secondChanceAtt = "second_chance_att"
      case secondChanceMade = "second_chance_made"
    }
  }
}

extension TeamSeasonalStats {
  struct Players: Codable {
    let id: String
    let fullName: String
    let firstName: String
    let lastName: String
    let position: String
    let primaryPosition: String
    let jerseyNumber: String?
    let srID: String
    let reference: String
    let total: Total
    let average: Average

    private enum CodingKeys: String, CodingKey {
      case id
      case fullName = "full_name"
      case firstName = "first_name"
      case lastName = "last_name"
      case position
      case primaryPosition = "primary_position"
      case jerseyNumber = "jersey_number"
      case srID = "sr_id"
      case reference
      case total
      case average
    }
  }
}

extension TeamSeasonalStats.Players {
  struct Total: Codable {
    let gamesPlayed: Int
    let gamesStarted: Int
    let minutes: Double
    let fieldGoalsMade: Int
    let fieldGoalsAtt: Int
    let fieldGoalsPct: Double
    let twoPointsMade: Int
    let twoPointsAtt: Int
    let twoPointsPct: Double
    let threePointsMade: Int
    let threePointsAtt: Int
    let threePointsPct: Double
    let blockedAtt: Int
    let freeThrowsMade: Int
    let freeThrowsAtt: Int
    let freeThrowsPct: Double
    let offensiveRebounds: Int
    let defensiveRebounds: Int
    let rebounds: Int
    let assists: Int
    let turnovers: Int
    let assistsTurnoverRatio: Double
    let steals: Int
    let blocks: Int
    let personalFouls: Int
    let techFouls: Int
    let points: Int
    let flagrantFouls: Int
    let ejections: Int
    let foulouts: Int
    let trueShootingAtt: Double
    let trueShootingPct: Double
    let efficiency: Int
    let pointsOffTurnovers: Int
    let pointsInPaint: Int
    let pointsInPaintMade: Int
    let pointsInPaintAtt: Int
    let pointsInPaintPct: Double
    let effectiveFgPct: Double
    let doubleDoubles: Int
    let tripleDoubles: Int
    let foulsDrawn: Int
    let offensiveFouls: Int
    let fastBreakPts: Int
    let fastBreakAtt: Int
    let fastBreakMade: Int
    let fastBreakPct: Double
    let coachEjections: Int
    let secondChancePct: Double
    let secondChancePts: Int
    let secondChanceAtt: Int
    let secondChanceMade: Int
    let minus: Int
    let plus: Int
    let coachTechFouls: Int

    private enum CodingKeys: String, CodingKey {
      case gamesPlayed = "games_played"
      case gamesStarted = "games_started"
      case minutes
      case fieldGoalsMade = "field_goals_made"
      case fieldGoalsAtt = "field_goals_att"
      case fieldGoalsPct = "field_goals_pct"
      case twoPointsMade = "two_points_made"
      case twoPointsAtt = "two_points_att"
      case twoPointsPct = "two_points_pct"
      case threePointsMade = "three_points_made"
      case threePointsAtt = "three_points_att"
      case threePointsPct = "three_points_pct"
      case blockedAtt = "blocked_att"
      case freeThrowsMade = "free_throws_made"
      case freeThrowsAtt = "free_throws_att"
      case freeThrowsPct = "free_throws_pct"
      case offensiveRebounds = "offensive_rebounds"
      case defensiveRebounds = "defensive_rebounds"
      case rebounds
      case assists
      case turnovers
      case assistsTurnoverRatio = "assists_turnover_ratio"
      case steals
      case blocks
      case personalFouls = "personal_fouls"
      case techFouls = "tech_fouls"
      case points
      case flagrantFouls = "flagrant_fouls"
      case ejections
      case foulouts
      case trueShootingAtt = "true_shooting_att"
      case trueShootingPct = "true_shooting_pct"
      case efficiency
      case pointsOffTurnovers = "points_off_turnovers"
      case pointsInPaint = "points_in_paint"
      case pointsInPaintMade = "points_in_paint_made"
      case pointsInPaintAtt = "points_in_paint_att"
      case pointsInPaintPct = "points_in_paint_pct"
      case effectiveFgPct = "effective_fg_pct"
      case doubleDoubles = "double_doubles"
      case tripleDoubles = "triple_doubles"
      case foulsDrawn = "fouls_drawn"
      case offensiveFouls = "offensive_fouls"
      case fastBreakPts = "fast_break_pts"
      case fastBreakAtt = "fast_break_att"
      case fastBreakMade = "fast_break_made"
      case fastBreakPct = "fast_break_pct"
      case coachEjections = "coach_ejections"
      case secondChancePct = "second_chance_pct"
      case secondChancePts = "second_chance_pts"
      case secondChanceAtt = "second_chance_att"
      case secondChanceMade = "second_chance_made"
      case minus
      case plus
      case coachTechFouls = "coach_tech_fouls"
    }
  }
}

extension TeamSeasonalStats.Players {
  struct Average: Codable {
    let minutes: Double
    let points: Double
    let offRebounds: Double
    let defRebounds: Double
    let rebounds: Double
    let assists: Double
    let steals: Double
    let blocks: Double
    let turnovers: Double
    let personalFouls: Double
    let flagrantFouls: Double
    let blockedAtt: Double
    let fieldGoalsMade: Double
    let fieldGoalsAtt: Double
    let threePointsMade: Double
    let threePointsAtt: Double
    let freeThrowsMade: Double
    let freeThrowsAtt: Double
    let twoPointsMade: Double
    let twoPointsAtt: Double
    let efficiency: Double
    let trueShootingAtt: Double
    let pointsOffTurnovers: Double
    let pointsInPaintMade: Double
    let pointsInPaintAtt: Double
    let pointsInPaint: Double
    let foulsDrawn: Double
    let offensiveFouls: Double
    let fastBreakPts: Double
    let fastBreakAtt: Double
    let fastBreakMade: Double
    let secondChancePts: Double
    let secondChanceAtt: Double
    let secondChanceMade: Double

    private enum CodingKeys: String, CodingKey {
      case minutes
      case points
      case offRebounds = "off_rebounds"
      case defRebounds = "def_rebounds"
      case rebounds
      case assists
      case steals
      case blocks
      case turnovers
      case personalFouls = "personal_fouls"
      case flagrantFouls = "flagrant_fouls"
      case blockedAtt = "blocked_att"
      case fieldGoalsMade = "field_goals_made"
      case fieldGoalsAtt = "field_goals_att"
      case threePointsMade = "three_points_made"
      case threePointsAtt = "three_points_att"
      case freeThrowsMade = "free_throws_made"
      case freeThrowsAtt = "free_throws_att"
      case twoPointsMade = "two_points_made"
      case twoPointsAtt = "two_points_att"
      case efficiency
      case trueShootingAtt = "true_shooting_att"
      case pointsOffTurnovers = "points_off_turnovers"
      case pointsInPaintMade = "points_in_paint_made"
      case pointsInPaintAtt = "points_in_paint_att"
      case pointsInPaint = "points_in_paint"
      case foulsDrawn = "fouls_drawn"
      case offensiveFouls = "offensive_fouls"
      case fastBreakPts = "fast_break_pts"
      case fastBreakAtt = "fast_break_att"
      case fastBreakMade = "fast_break_made"
      case secondChancePts = "second_chance_pts"
      case secondChanceAtt = "second_chance_att"
      case secondChanceMade = "second_chance_made"
    }
  }
}

