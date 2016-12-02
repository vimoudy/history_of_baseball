view: batting {
  sql_table_name: public.batting ;;

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${year} || ${team_id} || ${league_id} || ${stint} ;;
  }

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

  measure: sum_at_bats {
    type: sum
    hidden: yes
    sql: ${ab} ;;
  }

  measure: sum_hits {
    type: sum
    hidden: yes
    sql: ${h} ;;
  }

  measure: batting_average {
    type: number
    sql: ${sum_hits} / nullif(${sum_at_bats}, 0) ;;
    value_format_name: decimal_3
    link: {
      label: "Batting Stats"
      url: "https://localhost:9999/dashboards/9?Name={{name_first._filterable_value | url_encode}}%20{{name_last._filterable_value | url_encode}}"
      icon_url: "https://www.looker.com/favicon.ico"
    }
  }

  measure: total_hits {
    type: sum
    sql: ${h} ;;
    drill_fields: [year, total_hits]
  }

  measure:  total_at_bats {
    type:  sum
    sql: ${ab} ;;
  }

  measure: total_home_runs {
    type: sum
    sql:  ${hr} ;;
    drill_fields: [year, total_home_runs]
  }

  measure: total_caught_stealing {
    type: sum
    sql: ${cs} ;;
    drill_fields: [total_stolen_bases, total_caught_stealing]
  }

  measure: total_rbis {
    label: "Total RBIs"
    type: sum
    sql: ${rbi} ;;
  }

  measure: total_strikeouts {
    type: sum
    sql: ${so} ;;
  }

  measure: total_stolen_bases {
    type: sum
    sql: ${sb} ;;
    drill_fields: [player.real_name, year, total_stolen_bases, total_caught_stealing]
  }

  measure: success_rate {
    type: number
    sql: ${total_stolen_bases} / nullif((${total_stolen_bases} + ${total_caught_stealing}), 0 ) ;;
    value_format_name: percent_2
  }

  measure: total_triples {
    type: sum
    sql: ${triple} ;;
  }

  measure: total_doubles {
    type: sum
    sql: ${double} ;;
  }
}
