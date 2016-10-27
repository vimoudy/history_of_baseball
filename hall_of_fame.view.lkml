view: hall_of_fame {
  sql_table_name: public.hall_of_fame ;;

  dimension: ballots {
    type: number
    sql: ${TABLE}.ballots ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: inducted {
    type: string
    sql: ${TABLE}.inducted ;;
  }

  dimension: needed {
    type: number
    sql: ${TABLE}.needed ;;
  }

  dimension: needed_note {
    type: string
    sql: ${TABLE}.needed_note ;;
  }

  dimension: player_id {
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: voteby {
    type: string
    sql: ${TABLE}.voteby ;;
  }

  dimension: votes {
    type: number
    sql: ${TABLE}.votes ;;
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
