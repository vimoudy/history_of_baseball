view: home_game {
  sql_table_name: public.home_game ;;

  dimension: attendance {
    type: number
    sql: ${TABLE}.attendance ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}.games ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: openings {
    type: number
    sql: ${TABLE}.openings ;;
  }

  dimension: park_id {
    type: string
    # hidden: true
    sql: ${TABLE}.park_id ;;
  }

  dimension: span_first {
    type: string
    sql: ${TABLE}.span_first ;;
  }

  dimension: span_last {
    type: string
    sql: ${TABLE}.span_last ;;
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
    drill_fields: [team.name, team.team_id, park.park_name, park.park_id]
  }
}
