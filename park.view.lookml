- view: park
  sql_table_name: public.park
  fields:

  - dimension: park_id
    primary_key: true
    type: string
    sql: ${TABLE}.park_id

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: park_alias
    type: string
    sql: ${TABLE}.park_alias

  - dimension: park_name
    type: string
    sql: ${TABLE}.park_name

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - measure: count
    type: count
    drill_fields: [park_id, park_name, home_game.count]

