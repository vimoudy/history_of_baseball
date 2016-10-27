view: salary {
  sql_table_name: public.salary ;;

  dimension: league_id {
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: player_id {
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
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
