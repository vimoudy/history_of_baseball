view: pitching_postseason {
  sql_table_name: public.pitching_postseason ;;

  dimension: baopp {
    label: "Opponents Batting Average"
    type: string
    sql: ${TABLE}.baopp ;;
  }

  dimension: bb {
    label: "Walks"
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: bfp {
    label: "Batters Faced by Pitcher"
    type: number
    sql: ${TABLE}.bfp ;;
  }

  dimension: bk {
    label: "Balks"
    type: number
    sql: ${TABLE}.bk ;;
  }

  dimension: cg {
    label: "Complete Games"
    type: number
    sql: ${TABLE}.cg ;;
  }

  dimension: er {
    label: "Earned Runs"
    type: number
    sql: ${TABLE}.er ;;
  }

  dimension: era {
    label: "Earned Run Average"
    type: number
    sql: ${TABLE}.era ;;
  }

  dimension: g {
    label: "Games"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: g_idp {
    label: "Grounded into Double Play by Opposing Batter"
    type: number
    value_format_name: id
    sql: ${TABLE}.g_idp ;;
  }

  dimension: gf {
    label: "Games Finished"
    type: number
    sql: ${TABLE}.gf ;;
  }

  dimension: gs {
    label: "Games Started"
    type: number
    sql: ${TABLE}.gs ;;
  }

  dimension: h {
    label: "Hits"
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: hbp {
    label: "Batters hit by Pitch"
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

  dimension: ipouts {
    label: "Outs Pitched"
    type: number
    sql: ${TABLE}.ipouts ;;
  }

  dimension: l {
    label: "Losses"
    type: number
    sql: ${TABLE}.l ;;
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
    label: "Runs Allowed"
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: round {
    description: "Level of playoffs"
    type: string
    sql: ${TABLE}.round ;;
  }

  dimension: sf {
    label: "Sarifice Flies"
    type: number
    sql: ${TABLE}.sf ;;
  }

  dimension: sh {
    label: "Sarifice Hits"
    type: number
    sql: ${TABLE}.sh ;;
  }

  dimension: sho {
    label: "Shutouts"
    type: number
    sql: ${TABLE}.sho ;;
  }

  dimension: so {
    label: "Strikeouts"
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: sv {
    label: "Saves"
    type: number
    sql: ${TABLE}.sv ;;
  }

  dimension: team_id {
    label: "Team"
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
  }

  dimension: w {
    label: "Wins"
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: wp {
    label: "Wild Pitches"
    type: number
    sql: ${TABLE}.wp ;;
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
