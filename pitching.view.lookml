- view: pitching
  sql_table_name: public.pitching
  fields:

  - dimension: baopp
    type: number
    sql: ${TABLE}.baopp

  - dimension: bb
    type: number
    sql: ${TABLE}.bb

  - dimension: bfp
    type: number
    sql: ${TABLE}.bfp

  - dimension: bk
    type: number
    sql: ${TABLE}.bk

  - dimension: cg
    type: number
    sql: ${TABLE}.cg

  - dimension: er
    type: number
    sql: ${TABLE}.er

  - dimension: era
    type: number
    sql: ${TABLE}.era

  - dimension: g
    type: number
    sql: ${TABLE}.g

  - dimension: g_idp
    type: number
    value_format_name: id
    sql: ${TABLE}.g_idp

  - dimension: gf
    type: number
    sql: ${TABLE}.gf

  - dimension: gs
    type: number
    sql: ${TABLE}.gs

  - dimension: h
    type: number
    sql: ${TABLE}.h

  - dimension: hbp
    type: number
    sql: ${TABLE}.hbp

  - dimension: hr
    type: number
    sql: ${TABLE}.hr

  - dimension: ibb
    type: number
    sql: ${TABLE}.ibb

  - dimension: ipouts
    type: number
    sql: ${TABLE}.ipouts

  - dimension: l
    type: number
    sql: ${TABLE}.l

  - dimension: league_id
    type: string
    sql: ${TABLE}.league_id

  - dimension: player_id
    type: string
    # hidden: true
    sql: ${TABLE}.player_id

  - dimension: r
    type: number
    sql: ${TABLE}.r

  - dimension: sf
    type: number
    sql: ${TABLE}.sf

  - dimension: sh
    type: number
    sql: ${TABLE}.sh

  - dimension: sho
    type: number
    sql: ${TABLE}.sho

  - dimension: so
    type: number
    sql: ${TABLE}.so

  - dimension: stint
    type: number
    sql: ${TABLE}.stint

  - dimension: sv
    type: number
    sql: ${TABLE}.sv

  - dimension: team_id
    type: string
    # hidden: true
    sql: ${TABLE}.team_id

  - dimension: w
    type: number
    sql: ${TABLE}.w

  - dimension: wp
    type: number
    sql: ${TABLE}.wp

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: [player.player_id, team.name, team.team_id]

