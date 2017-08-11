view: team {
  sql_table_name: public.team ;;

  dimension: team_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.team_id ;;
  }

  dimension: ab {
    label: "At Bats"
    type: number
    sql: ${TABLE}.ab ;;
  }

  dimension: attendance {
    description: "Home attendance total"
    type: number
    sql: ${TABLE}.attendance ;;
  }

  dimension: bb {
    label: "Walks by Batters"
    type: number
    sql: ${TABLE}.bb ;;
  }

  dimension: bba {
    label: "Walks Allowed"
    type: number
    sql: ${TABLE}.bba ;;
  }

  dimension: bpf {
    label: "Three-year park factor for batters"
    type: number
    sql: ${TABLE}.bpf ;;
  }

  dimension: cg {
    label: "Complete Game"
    type: number
    sql: ${TABLE}.cg ;;
  }

  dimension: cs {
    label: "Caught Stealing"
    type: number
    sql: ${TABLE}.cs ;;
  }

  dimension: div_id {
    label: "Division"
    type: string
    sql: ${TABLE}.div_id ;;
  }

  dimension: div_win {
    label: "Division Winner"
    type: yesno
    sql: ${TABLE}.div_win = 'Y';;
  }

  dimension: double {
    type: number
    sql: ${TABLE}.double ;;
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

  dimension: er {
    label: "Earned Runs"
    type: number
    sql: ${TABLE}.er ;;
  }

  dimension: era {
    label: "Earned Run Average"
    type: number
    sql: ${TABLE}.era ;;
    value_format_name: decimal_2
  }

  dimension: fp {
    label: "Fielding Percentage"
    type: number
    sql: ${TABLE}.fp ;;
  }

  dimension: franchise_id {
    label: "Franchise"
    type: string
    sql: ${TABLE}.franchise_id ;;
  }

  dimension: g {
    label: "Games Played"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: ghome {
    label: "Games Played at Home"
    type: number
    sql: ${TABLE}.ghome ;;
  }

  dimension: h {
    label: "Hits"
    type: number
    sql: ${TABLE}.h ;;
  }

  dimension: ha {
    label: "Hits Allowed"
    type: number
    sql: ${TABLE}.ha ;;
  }

  dimension: hbp {
    label: "Batters Hit by Pitch"
    type: number
    sql: ${TABLE}.hbp ;;
  }

  dimension: hr {
    label: "Home Runs"
    type: number
    sql: ${TABLE}.hr ;;
  }

  dimension: hra {
    label: "Home Runs Allowed"
    type: number
    sql: ${TABLE}.hra ;;
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
    type: string
    sql: ${TABLE}.league_id ;;
  }

  dimension: lg_win {
    label: "League Champion"
    type:  yesno
    sql: ${TABLE}.lg_win = 'Y';;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    link: {
      label: "Fun Fact Dashboard!"
      url: "https://self-signed.looker.com:9999/dashboards/12?World%20Series%20Wins={{ _filters['team.name'] | url_encode}}"
    }
  }

  dimension: park {
    type: string
    sql: ${TABLE}.park ;;
  }

  dimension: ppf {
    label: "Three-year park factor for pitchers"
    type: number
    sql: ${TABLE}.ppf ;;
  }

  dimension: r {
    label: "Runs"
    type: number
    sql: ${TABLE}.r ;;
  }

  dimension: ra {
    label: "Opponents Runs Scored"
    type: number
    sql: ${TABLE}.ra ;;
  }

  dimension: rank {
    description: "Position in final standings"
    type: number
    sql: ${TABLE}.rank ;;
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

  dimension: sho {
    label: "Shutouts"
    type: number
    sql: ${TABLE}.sho ;;
  }

  dimension: so {
    label: "Strikeouts by Batters"
    type: number
    sql: ${TABLE}.so ;;
  }

  dimension: soa {
    label: "Strikeouts by Pitchers"
    type: number
    sql: ${TABLE}.soa ;;
  }

  dimension: sv {
    label: "Saves"
    type: number
    sql: ${TABLE}.sv ;;
  }

  dimension: team_id_br {
    label: "Team ID"
    description: "Baseball Reference website"
    type: string
    sql: ${TABLE}.team_id_br ;;
  }

  dimension: team_id_lahman45 {
    label: "Team ID"
    description: "Lahman database version 4.5"
    type: string
    sql: ${TABLE}.team_id_lahman45 ;;
  }

  dimension: team_id_retro {
    label: "Team ID"
    label: "Retrosheet"
    type: string
    sql: ${TABLE}.team_id_retro ;;
  }

  dimension: triple {
    type: number
    sql: ${TABLE}.triple ;;
  }

  dimension: w {
    label: "Wins"
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: wc_win {
    label: "Wild Card Winner"
    type: yesno
    sql: ${TABLE}.wc_win = 'Y' ;;
  }

  dimension: ws_win {
    label: "World Series Win"
    type: yesno
    sql: ${TABLE}.ws_win = 'Y' ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_runs_given_up {
    type: sum
    sql: ${ra} ;;
  }

  measure: total_home_runs {
    type: sum
    sql: ${hr} ;;
  }

  measure: total_runs {
    type: sum
    sql: ${r} ;;
  }

  measure: total_wins {
    type: sum
    sql: ${w} ;;
  }

  measure: total_losses {
    type: sum
    sql: ${l} ;;
  }

  measure: total_home_runs_given_up {
    type: sum
    sql: ${hra} ;;
  }

  measure: total_doubles {
    type: sum
    sql: ${double} ;;
  }

  measure: total_triples {
    type: sum
    sql: ${triple} ;;
  }

  measure: total_hits {
    type: sum
    sql: ${h} ;;
  }

  measure: total_at_bats {
    type: sum
    sql: ${ab} ;;
  }

  measure: most_losses {
    type: max
    sql: ${l} ;;
  }

  measure: batting_average {
    type: number
    sql: ${total_hits}::float / ${total_at_bats}::float ;;
    value_format_name: decimal_3
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [name, year, total_wins, total_losses, batting_average]
  }
}
