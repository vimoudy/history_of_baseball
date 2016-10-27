- view: fielding
  sql_table_name: public.fielding
  fields:

  - dimension: a
    type: number
    sql: ${TABLE}.a

  - dimension: cs
    type: number
    sql: ${TABLE}.cs

  - dimension: dp
    type: number
    sql: ${TABLE}.dp

  - dimension: e
    type: number
    sql: ${TABLE}.e

  - dimension: g
    type: number
    sql: ${TABLE}.g

  - dimension: gs
    type: number
    sql: ${TABLE}.gs

  - dimension: inn_outs
    type: number
    sql: ${TABLE}.inn_outs

  - dimension: league_id
    type: string
    sql: ${TABLE}.league_id

  - dimension: pb
    type: number
    sql: ${TABLE}.pb

  - dimension: player_id
    type: string
    # hidden: true
    sql: ${TABLE}.player_id

  - dimension: po
    type: number
    sql: ${TABLE}.po

  - dimension: pos
    type: string
    sql: ${TABLE}.pos

  - dimension: sb
    type: number
    sql: ${TABLE}.sb

  - dimension: stint
    type: number
    sql: ${TABLE}.stint

  - dimension: team_id
    type: string
    # hidden: true
    sql: ${TABLE}.team_id

  - dimension: wp
    type: number
    sql: ${TABLE}.wp

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - dimension: zr
    type: number
    sql: ${TABLE}.zr

  - measure: count
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]

