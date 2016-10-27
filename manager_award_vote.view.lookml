- view: manager_award_vote
  sql_table_name: public.manager_award_vote
  fields:

  - dimension: award_id
    type: string
    sql: ${TABLE}.award_id

  - dimension: league_id
    type: string
    sql: ${TABLE}.league_id

  - dimension: player_id
    type: string
    # hidden: true
    sql: ${TABLE}.player_id

  - dimension: points_max
    type: number
    sql: ${TABLE}.points_max

  - dimension: points_won
    type: number
    sql: ${TABLE}.points_won

  - dimension: votes_first
    type: number
    sql: ${TABLE}.votes_first

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [player.player_id]

