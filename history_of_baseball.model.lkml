connection: "history_of_baseball"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: all_star {
  join: team {
    type: left_outer
    sql_on: ${all_star.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: player {
    type: left_outer
    sql_on: ${all_star.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: appearances {
  join: team {
    type: left_outer
    sql_on: ${appearances.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: player {
    type: left_outer
    sql_on: ${appearances.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: batting {
  join: team {
    type: left_outer
    sql_on: ${batting.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: player {
    type: left_outer
    sql_on: ${batting.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: batting_postseason {
  join: player {
    type: left_outer
    sql_on: ${batting_postseason.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${batting_postseason.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}

explore: college {
  hidden: yes
}

explore: fielding {
  join: player {
    type: left_outer
    sql_on: ${fielding.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${fielding.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}

explore: fielding_outfield {
  join: player {
    type: left_outer
    sql_on: ${fielding_outfield.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: fielding_postseason {
  join: player {
    type: left_outer
    sql_on: ${fielding_postseason.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${fielding_postseason.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}

explore: hall_of_fame {
  join: player {
    type: left_outer
    sql_on: ${hall_of_fame.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: home_game {
  join: team {
    type: left_outer
    sql_on: ${home_game.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: park {
    type: left_outer
    sql_on: ${home_game.park_id} = ${park.park_id} ;;
    relationship: many_to_one
  }
}

explore: manager {
  join: player {
    type: left_outer
    sql_on: ${manager.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${manager.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}

explore: manager_award {
  hidden: yes
  join: player {
    type: left_outer
    sql_on: ${manager_award.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: manager_award_vote {
  hidden: yes
  join: player {
    type: left_outer
    sql_on: ${manager_award_vote.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: manager_half {
  hidden: yes
  join: player {
    type: left_outer
    sql_on: ${manager_half.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${manager_half.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}

explore: park {}

explore: pitching {
  join: player {
    type: left_outer
    sql_on: ${pitching.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${pitching.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: salary {
    type: left_outer
    sql_on: ${pitching.player_id} = ${salary.player_id} ;;
    relationship: many_to_many
  }
}

explore: pitching_postseason {
  join: player {
    type: left_outer
    sql_on: ${pitching_postseason.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }

  join: team {
    type: left_outer
    sql_on: ${pitching_postseason.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}

explore: player {
  join:  batting_postseason {
    type: left_outer
    sql_on: ${batting_postseason.player_id} = ${player.player_id} ;;
    relationship: one_to_many
  }

  join:  batting {
    type: left_outer
    sql_on: ${batting.player_id} = ${player.player_id} ;;
    relationship: one_to_many
  }

  join: salary{
    type: left_outer
    sql_on: ${batting.player_id} = ${salary.player_id} ;;
    relationship: one_to_many
  }

  join: player_award {
    type: left_outer
    sql_on: ${player.player_id} = ${player_award.player_id} ;;
    relationship: one_to_many
  }

  join: pitching {
    type: left_outer
    sql_on: ${player.player_id} = ${pitching.player_id};;
    relationship: one_to_many
  }
}

explore: player_award {
  join: player {
    type: left_outer
    sql_on: ${player_award.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: player_award_vote {
  join: player {
    type: left_outer
    sql_on: ${player_award_vote.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: player_college {
  hidden: yes
  join: player {
    type: left_outer
    sql_on: ${player_college.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: postseason {}

explore: salary {
  join: team {
    type: left_outer
    sql_on: ${salary.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }

  join: player {
    type: left_outer
    sql_on: ${salary.player_id} = ${player.player_id} ;;
    relationship: many_to_one
  }
}

explore: team {}

explore: team_franchise {}

explore: team_half {
  hidden: yes
  join: team {
    type: left_outer
    sql_on: ${team_half.team_id} = ${team.team_id} ;;
    relationship: many_to_one
  }
}
