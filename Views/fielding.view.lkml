view: fielding {
  sql_table_name: public.fielding ;;

  dimension: a {
    label: "Assists"
    type: number
    sql: ${TABLE}.a ;;
  }



  dimension: cs {
    label: "Opponents Caught Stealing(by Catcher)"
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: dp {
    label: "Double Plays"
    type: number
    sql: ${TABLE}.dp ;;
  }

  dimension: e {
    label: "Errors"
    type: number
    sql: ${TABLE}.e ;;
  }

  dimension: g {
    label: "Games"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: gs {
    label: "Games Started"
    type: number
    sql: ${TABLE}.gs ;;
  }

  dimension: inn_outs {
    label: "Time played in the field expressed as outs"
    type: number
    sql: ${TABLE}.inn_outs ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: pb {
    label: "Passed Balls(by Catchers)"
    type: number
    sql: ${TABLE}.pb ;;
  }

  dimension: player_id {
    type: string
    # hidden: true
    sql: ${TABLE}.player_id ;;
  }

  dimension: po {
    label: "Putouts"
    type: number
    sql: ${TABLE}.po ;;
  }

  dimension: pos {
    label: "Positions"
    type: string
    sql: ${TABLE}.pos ;;
  }

  dimension: sb {
    label: "Opponents Stolen Bases(by Catchers)"
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: stint {
    label: "Order of Appearances Within a Season"
    type: number
    sql: ${TABLE}.stint ;;
  }

  dimension: team_id {
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
  }

  dimension: wp {
    label: "Wild Pitches(by Catchers)"
    type: number
    sql: ${TABLE}.wp ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: zr {
    label: "Zone Rating"
    type: number
    sql: ${TABLE}.zr ;;
  }

  measure: count {
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]
  }
}
