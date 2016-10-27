- view: player_college
  sql_table_name: public.player_college
  fields:

  - dimension: college
    type: string
    sql: ${TABLE}.college

  - dimension: player_id
    type: string
    # hidden: true
    sql: ${TABLE}.player_id

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [player.player_id]

