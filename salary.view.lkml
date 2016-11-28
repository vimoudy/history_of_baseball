view: salary {
  sql_table_name: public.salary ;;

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

  dimension: pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${player_id} || ${team_id} || ${year} ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
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

  measure: max_salary {
    type: max
    sql: ${salary} ;;
    value_format_name: usd_0
  }

  measure: total_salary {
    type: sum
    sql: ${salary} ;;
    value_format_name: usd
  }

  measure: total_years_played {
    type: count
  }
}
