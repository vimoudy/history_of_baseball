view: batting {
  sql_table_name: public.batting ;;

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
    label: "Double"
    type: number
    sql: ${TABLE}.double ;;
  }

  dimension: g {
    label: "Games"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: g_idp {
    label: "Ground into Double Play"
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
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: player_id {
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

  dimension: sb {
    label: "Stolen Bases"
    type: number
    sql: ${TABLE}.sb ;;
  }

  dimension: sf {
    label: "Sarifice Flies"
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

  dimension: stint {
    label: "Appearance Within a Season"
    type: number
    sql: ${TABLE}.stint ;;
  }

  dimension: team_id {
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
    drill_fields: [team.name, team.team_id, player.player_id]
  }
}
