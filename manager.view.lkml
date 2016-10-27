view: manager {
  sql_table_name: public.manager ;;

  dimension: g {
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: inseason {
    type: number
    sql: ${TABLE}.inseason ;;
  }

  dimension: l {
    type: number
    sql: ${TABLE}.l ;;
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

  dimension: plyr_mgr {
    type: string
    sql: ${TABLE}.plyr_mgr ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: team_id {
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]
  }
}
