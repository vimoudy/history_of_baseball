- connection: history_of_baseball

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: all_star
  joins:
    - join: team
      type: left_outer 
      sql_on: ${all_star.team_id} = ${team.team_id}
      relationship: many_to_one

    - join: player
      type: left_outer 
      sql_on: ${all_star.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: appearances
  joins:
    - join: team
      type: left_outer 
      sql_on: ${appearances.team_id} = ${team.team_id}
      relationship: many_to_one

    - join: player
      type: left_outer 
      sql_on: ${appearances.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: batting
  joins:
    - join: team
      type: left_outer 
      sql_on: ${batting.team_id} = ${team.team_id}
      relationship: many_to_one

    - join: player
      type: left_outer 
      sql_on: ${batting.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: batting_postseason
  joins:
    - join: player
      type: left_outer 
      sql_on: ${batting_postseason.player_id} = ${player.player_id}
      relationship: many_to_one

    - join: team
      type: left_outer 
      sql_on: ${batting_postseason.team_id} = ${team.team_id}
      relationship: many_to_one


- explore: college

- explore: fielding
  joins:
    - join: player
      type: left_outer 
      sql_on: ${fielding.player_id} = ${player.player_id}
      relationship: many_to_one

    - join: team
      type: left_outer 
      sql_on: ${fielding.team_id} = ${team.team_id}
      relationship: many_to_one


- explore: fielding_outfield
  joins:
    - join: player
      type: left_outer 
      sql_on: ${fielding_outfield.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: fielding_postseason
  joins:
    - join: player
      type: left_outer 
      sql_on: ${fielding_postseason.player_id} = ${player.player_id}
      relationship: many_to_one

    - join: team
      type: left_outer 
      sql_on: ${fielding_postseason.team_id} = ${team.team_id}
      relationship: many_to_one


- explore: hall_of_fame
  joins:
    - join: player
      type: left_outer 
      sql_on: ${hall_of_fame.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: home_game
  joins:
    - join: team
      type: left_outer 
      sql_on: ${home_game.team_id} = ${team.team_id}
      relationship: many_to_one

    - join: park
      type: left_outer 
      sql_on: ${home_game.park_id} = ${park.park_id}
      relationship: many_to_one


- explore: manager
  joins:
    - join: player
      type: left_outer 
      sql_on: ${manager.player_id} = ${player.player_id}
      relationship: many_to_one

    - join: team
      type: left_outer 
      sql_on: ${manager.team_id} = ${team.team_id}
      relationship: many_to_one


- explore: manager_award
  joins:
    - join: player
      type: left_outer 
      sql_on: ${manager_award.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: manager_award_vote
  joins:
    - join: player
      type: left_outer 
      sql_on: ${manager_award_vote.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: manager_half
  joins:
    - join: player
      type: left_outer 
      sql_on: ${manager_half.player_id} = ${player.player_id}
      relationship: many_to_one

    - join: team
      type: left_outer 
      sql_on: ${manager_half.team_id} = ${team.team_id}
      relationship: many_to_one


- explore: park

- explore: pitching
  joins:
    - join: player
      type: left_outer 
      sql_on: ${pitching.player_id} = ${player.player_id}
      relationship: many_to_one

    - join: team
      type: left_outer 
      sql_on: ${pitching.team_id} = ${team.team_id}
      relationship: many_to_one


- explore: pitching_postseason
  joins:
    - join: player
      type: left_outer 
      sql_on: ${pitching_postseason.player_id} = ${player.player_id}
      relationship: many_to_one

    - join: team
      type: left_outer 
      sql_on: ${pitching_postseason.team_id} = ${team.team_id}
      relationship: many_to_one


- explore: player

- explore: player_award
  joins:
    - join: player
      type: left_outer 
      sql_on: ${player_award.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: player_award_vote
  joins:
    - join: player
      type: left_outer 
      sql_on: ${player_award_vote.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: player_college
  joins:
    - join: player
      type: left_outer 
      sql_on: ${player_college.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: postseason

- explore: salary
  joins:
    - join: team
      type: left_outer 
      sql_on: ${salary.team_id} = ${team.team_id}
      relationship: many_to_one

    - join: player
      type: left_outer 
      sql_on: ${salary.player_id} = ${player.player_id}
      relationship: many_to_one


- explore: team

- explore: team_franchise

- explore: team_half
  joins:
    - join: team
      type: left_outer 
      sql_on: ${team_half.team_id} = ${team.team_id}
      relationship: many_to_one


