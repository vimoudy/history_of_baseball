view: fielding_postseason {
  sql_table_name: public.fielding_postseason ;;

  dimension: a {
    label: "Assists"
    type: number
    sql: ${TABLE}.a ;;
  }

  dimension: cs {
    label: "Caught Stealing(by Catcher)"
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
    label: "League"
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: pb {
    label: "Passed Balls"
    type: number
    sql: ${TABLE}.pb ;;
  }

  dimension: player_id {
    label: "Player"
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
    label: "Position"
    type: string
    sql: ${TABLE}.pos ;;
  }

  dimension: round {
    description: "Level of playoffs"
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: sb {
    label: "Stolen Bases(by Catcher)"
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: team_id {
    label: "Team"
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
  }

  dimension: tp {
    label: "Triple Plays"
    type: number
    sql: ${TABLE}.tp ;;
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
