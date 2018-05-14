view: manager {
  sql_table_name: public.manager ;;

  dimension: g {
    label: "Games"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: inseason {
    label: "Managerial order"
    description: "Zero if the individual managed the team the entire year. Otherwise denotes where the manager appeared in the managerial order (1 for first manager, 2 for second, etc.)"
    type: number
    sql: ${TABLE}.inseason ;;
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

  dimension: plyr_mgr {
    label: "Player Manager"
    type: yesno
    sql: ${TABLE}.plyr_mgr = 'Y' ;;
  }

  dimension: rank {
    description: "Team’s final position in standings that year"
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: team_id {
    type: string
    # hidden: true
    sql: ${TABLE}.team_id ;;
  }

  dimension: w {
    label: "Wins"
    type: number
    sql: ${TABLE}.w ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count_test {
    type: count
    filters: {
      field: team_id
      value: "as"
    }
  }

  measure: count {
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]
  }
}
