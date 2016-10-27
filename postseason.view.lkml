view: postseason {
  sql_table_name: public.postseason ;;

  dimension: league_id_loser {
    type: string
    sql: ${TABLE}.league_id_loser ;;
  }

  dimension: league_id_winner {
    type: string
    sql: ${TABLE}.league_id_winner ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.losses ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: team_id_loser {
    type: string
    sql: ${TABLE}.team_id_loser ;;
  }

  dimension: team_id_winner {
    type: string
    sql: ${TABLE}.team_id_winner ;;
  }

  dimension: ties {
    type: number
    sql: ${TABLE}.ties ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}.wins ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
