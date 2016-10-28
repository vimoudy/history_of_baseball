view: batting_postseason {
  sql_table_name: public.batting_postseason ;;

  dimension: ab {
    label: "At Bats"
    type: number
    sql: ${TABLE}.ab ;;
  }

  dimension: bb {
    label: "Base on Balls"
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: cs {
    label: "Caught Stealing"
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: double {
    type: number
    sql: ${TABLE}.double ;;
  }

  dimension: g {
    label: "Games"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: g_idp {
    label: "Grounded into Double Plays"
    type: number
    value_format_name: id
    sql: ${TABLE}.g_idp ;;
  }

  dimension: h {
    label: "Hits"
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: hbp {
    label: "Hit by Pitch"
    type: number
    sql: ${TABLE}.hbp ;;
  }

  dimension: hr {
    label: "Home Runs"
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: ibb {
    label: "Intentional Walks"
    type: number
    sql: ${TABLE}.ibb ;;
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

  dimension: r {
    label: "Runs"
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: rbi {
    label: "Runs Batted In"
    type: number
    sql: ${TABLE}.rbi ;;
  }

  dimension: round {
    description: "Level of playoffs"
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: sb {
    label: "Stolen Bases"
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: sf {
    label: "Sacrifice Flies"
    type: number
    sql: ${TABLE}.sf ;;
  }

  dimension: sh {
    label: "Sacrifice Hits"
    type: number
    sql: ${TABLE}.sh ;;
  }

  dimension: so {
    label: "Strikeouts"
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: team_id {
    label: "Team"
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
  }

  dimension: triple {
    type: number
    sql: ${TABLE}.triple ;;
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
