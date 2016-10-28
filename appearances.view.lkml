view: appearances {
  sql_table_name: public.appearances ;;

  dimension: g_1b {
    label: "Games as 1st Base"
    type: number
    sql: ${TABLE}.g_1b ;;
  }

  dimension: g_2b {
    label: "Games as 2nd Base"
    type: number
    sql: ${TABLE}.g_2b ;;
  }

  dimension: g_3b {
    label: "Games as 3rd Base"
    type: number
    sql: ${TABLE}.g_3b ;;
  }

  dimension: g_all {
    label: "Total Games Played"
    type: number
    sql: ${TABLE}.g_all ;;
  }

  dimension: g_batting {
    label: "Games in which Players Batted"
    type: number
    sql: ${TABLE}.g_batting ;;
  }

  dimension: g_c {
    label: "Games as Catcher"
    type: number
    sql: ${TABLE}.g_c ;;
  }

  dimension: g_cf {
    label: "Games as Centerfield"
    type: number
    sql: ${TABLE}.g_cf ;;
  }

  dimension: g_defense {
    label: "Games in which Player Appeared as Defense "
    type: number
    sql: ${TABLE}.g_defense ;;
  }

  dimension: g_dh {
    label: "Games as Designated Hitter"
    type: number
    sql: ${TABLE}.g_dh ;;
  }

  dimension: g_lf {
    label: "Games as Leftfield"
    type: number
    sql: ${TABLE}.g_lf ;;
  }

  dimension: g_of {
    label: "Games as Outfield"
    type: number
    sql: ${TABLE}.g_of ;;
  }

  dimension: g_p {
    label: "Games as Pitcher"
    type: number
    sql: ${TABLE}.g_p ;;
  }

  dimension: g_ph {
    label: "Games as Pinch Hitter"
    type: number
    sql: ${TABLE}.g_ph ;;
  }

  dimension: g_pr {
    label: "Games as Pinch runner"
    type: number
    sql: ${TABLE}.g_pr ;;
  }

  dimension: g_rf {
    label: "Games as Rightfield"
    type: number
    sql: ${TABLE}.g_rf ;;
  }

  dimension: g_ss {
    label: "Games as Shortstop"
    type: number
    sql: ${TABLE}.g_ss ;;
  }

  dimension: gs {
    label: "Games Started"
    type: string
    sql: ${TABLE}.gs ;;
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

  dimension: team_id {
    label: "Team"
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
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
