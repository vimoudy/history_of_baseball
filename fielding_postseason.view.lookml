- view: fielding_postseason
  sql_table_name: public.fielding_postseason
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

  - dimension: round
    type: string
    sql: ${TABLE}.round

  - dimension: sb
    type: number
    sql: ${TABLE}.sb

  - dimension: team_id
    type: string
    # hidden: true
    sql: ${TABLE}.team_id

  - dimension: tp
    type: number
    sql: ${TABLE}.tp

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]

