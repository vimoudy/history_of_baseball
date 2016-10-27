- view: team_half
  sql_table_name: public.team_half
  fields:

  - dimension: div_id
    type: string
    sql: ${TABLE}.div_id

  - dimension: div_win
    type: string
    sql: ${TABLE}.div_win

  - dimension: g
    type: number
    sql: ${TABLE}.g

  - dimension: half
    type: string
    sql: ${TABLE}.half

  - dimension: l
    type: number
    sql: ${TABLE}.l

  - dimension: league_id
    type: string
    sql: ${TABLE}.league_id

  - dimension: rank
    type: number
    sql: ${TABLE}.rank

  - dimension: team_id
    type: string
    # hidden: true
    sql: ${TABLE}.team_id

  - dimension: w
    type: number
    sql: ${TABLE}.w

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [team.name, team.team_id]

