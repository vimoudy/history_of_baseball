- view: appearances
  sql_table_name: public.appearances
  fields:

  - dimension: g_1b
    type: number
    sql: ${TABLE}.g_1b

  - dimension: g_2b
    type: number
    sql: ${TABLE}.g_2b

  - dimension: g_3b
    type: number
    sql: ${TABLE}.g_3b

  - dimension: g_all
    type: number
    sql: ${TABLE}.g_all

  - dimension: g_batting
    type: number
    sql: ${TABLE}.g_batting

  - dimension: g_c
    type: number
    sql: ${TABLE}.g_c

  - dimension: g_cf
    type: number
    sql: ${TABLE}.g_cf

  - dimension: g_defense
    type: number
    sql: ${TABLE}.g_defense

  - dimension: g_dh
    type: number
    sql: ${TABLE}.g_dh

  - dimension: g_lf
    type: number
    sql: ${TABLE}.g_lf

  - dimension: g_of
    type: number
    sql: ${TABLE}.g_of

  - dimension: g_p
    type: number
    sql: ${TABLE}.g_p

  - dimension: g_ph
    type: number
    sql: ${TABLE}.g_ph

  - dimension: g_pr
    type: number
    sql: ${TABLE}.g_pr

  - dimension: g_rf
    type: number
    sql: ${TABLE}.g_rf

  - dimension: g_ss
    type: number
    sql: ${TABLE}.g_ss

  - dimension: gs
    type: string
    sql: ${TABLE}.gs

  - dimension: league_id
    type: string
    sql: ${TABLE}.league_id

  - dimension: player_id
    type: string
    # hidden: true
    sql: ${TABLE}.player_id

  - dimension: team_id
    type: string
    # hidden: true
    sql: ${TABLE}.team_id

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [team.name, team.team_id, player.player_id]

