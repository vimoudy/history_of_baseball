view: manager_half {
  sql_table_name: public.manager_half ;;

  dimension: g {
    label: "Games"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: half {
    label: "First or Second Half of Season"
    type: number
    sql: ${TABLE}.half ;;
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

  dimension: rank {
    description: "Team’s position in standings for the half"
    type: number
    sql: ${TABLE}.rank ;;
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

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]
  }
}
