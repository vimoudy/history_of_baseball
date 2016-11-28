view: pitching {
  sql_table_name: public.pitching ;;

  dimension: baopp {
    label: "Opponents Batting Average"
    type: number
    sql: ${TABLE}.baopp ;;
    value_format_name: decimal_3
  }

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${year} || ${team_id} || ${league_id} || ${stint} ;;
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
    value_format_name: decimal_3
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

  dimension: sf {
    label: "Sacrifice Flies"
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

  dimension: stint {
    label: "Orders of Apperance within a Season"
    type: number
    sql: ${TABLE}.stint ;;
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
    sql: ${TABLE}.year;;
  }

  measure: count {
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]
  }

  measure: total_strikeouts {
    type: sum
    sql: ${so} ;;
    drill_fields: [year, total_strikeouts]
  }

  measure: total_wins {
    type: sum
    sql: ${w} ;;
    drill_fields: [year, total_wins]
  }

  measure: total_saves {
    type: sum
    sql: ${sv} ;;
  }

  measure: total_wild_pitchs {
    type: sum
    sql: ${wp} ;;
  }

  measure: total_hits {
    type: sum
    sql: ${h} ;;
  }

  measure: total_shutouts{
    type: sum
    sql: ${sho} ;;
  }

  measure: average_era {
    type: average
    sql: ${era} ;;
    value_format_name: decimal_3
  }

  measure: total_games_started {
    type: sum
    sql: ${gs} ;;
  }

  measure: total_games_played {
    type: sum
    sql: ${g} ;;
  }

  measure: total_losses {
    type: sum
    sql: ${l} ;;
  }

  measure: total_walks {
    type: sum
    sql: ${bb} ;;
  }

  measure: opposing_batting_average {
    type: average
    sql: ${baopp} ;;
    value_format_name: decimal_3
    drill_fields: [year, baopp]
  }
}
