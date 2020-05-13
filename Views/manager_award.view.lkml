view: manager_award {
  sql_table_name: public.manager_award ;;

  dimension: award_id {
    label: "Award Name"
    type: string
    sql: ${TABLE}.award_id ;;
  }

  dimension: league_id {
    label: "League"
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: notes {
    label: " Notes About the Award"
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: player_id {
    label: "Player"
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: tie {
    type: yesno
    sql: ${TABLE}.tie = 'Y' ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [player.player_id]
  }
}
