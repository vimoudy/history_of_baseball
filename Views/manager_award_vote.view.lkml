view: manager_award_vote {
  sql_table_name: public.manager_award_vote ;;

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

  dimension: player_id {
    label: "Player"
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: points_max {
    label: "Max Points Available"
    type: number
    sql: ${TABLE}.points_max ;;
  }

  dimension: points_won {
    type: number
    sql: ${TABLE}.points_won ;;
  }

  dimension: votes_first {
    label: "Number of First Place Votes"
    type: number
    sql: ${TABLE}.votes_first ;;
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
