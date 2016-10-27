view: fielding_outfield {
  sql_table_name: public.fielding_outfield ;;

  dimension: gcf {
    type: number
    sql: ${TABLE}.gcf ;;
  }

  dimension: glf {
    type: number
    sql: ${TABLE}.glf ;;
  }

  dimension: grf {
    type: number
    sql: ${TABLE}.grf ;;
  }

  dimension: player_id {
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: stint {
    type: number
    sql: ${TABLE}.stint ;;
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
