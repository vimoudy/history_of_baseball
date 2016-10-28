view: fielding_outfield {
  sql_table_name: public.fielding_outfield ;;

  dimension: gcf {
    label: "Games Played in Center Field"
    type: number
    sql: ${TABLE}.gcf ;;
  }

  dimension: glf {
    label: "Games Played in Left Field"
    type: number
    sql: ${TABLE}.glf ;;
  }

  dimension: grf {
    label: "Games Played in Right Field"
    type: number
    sql: ${TABLE}.grf ;;
  }

  dimension: player_id {
    label: "Player"
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: stint {
    label: "Order of Appearances Within a Season"
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
