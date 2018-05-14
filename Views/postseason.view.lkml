view: postseason {
  sql_table_name: public.postseason ;;

  dimension: league_id_loser {
    label: "League that Lost"
    type: string
    sql: ${TABLE}.league_id_loser ;;
  }

  dimension: league_id_winner {
    label: "League that Won"
    type: string
    sql: ${TABLE}.league_id_winner ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}.losses ;;
  }

  dimension: round {
    description: "Level of playoffs"
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: team_id_loser {
    label: "Losing Team"
    type: string
    sql: ${TABLE}.team_id_loser ;;
  }

  dimension: team_id_winner {
    label: "Winning Team"
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
