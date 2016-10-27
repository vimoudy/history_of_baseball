view: all_star {
  sql_table_name: public.all_star ;;

  dimension: game_id {
    type: string
    sql: ${TABLE}.game_id ;;
  }

  dimension: game_num {
    type: number
    sql: ${TABLE}.game_num ;;
  }

  dimension: gp {
    type: number
    sql: ${TABLE}.gp ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: player_id {
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: starting_pos {
    type: number
    sql: ${TABLE}.starting_pos ;;
  }

  dimension: team_id {
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [team.name, team.team_id, player.player_id]
  }
}
