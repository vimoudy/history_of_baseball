view: team_half {
  sql_table_name: public.team_half ;;

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

  dimension: g {
    label: "Games Played"
    type: number
    sql: ${TABLE}.g ;;
  }

  dimension: half {
    label: "First or second half of season"
    type: string
    sql: ${TABLE}.half ;;
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
    drill_fields: [team.name, team.team_id]
  }
}
