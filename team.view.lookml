- view: team
  sql_table_name: public.team
  fields:

  - dimension: team_id
    primary_key: true
    type: string
    sql: ${TABLE}.team_id

  - dimension: ab
    type: number
    sql: ${TABLE}.ab

  - dimension: attendance
    type: number
    sql: ${TABLE}.attendance

  - dimension: bb
    type: number
    sql: ${TABLE}.bb

  - dimension: bba
    type: number
    sql: ${TABLE}.bba

  - dimension: bpf
    type: number
    sql: ${TABLE}.bpf

  - dimension: cg
    type: number
    sql: ${TABLE}.cg

  - dimension: cs
    type: number
    sql: ${TABLE}.cs

  - dimension: div_id
    type: string
    sql: ${TABLE}.div_id

  - dimension: div_win
    type: string
    sql: ${TABLE}.div_win

  - dimension: double
    type: number
    sql: ${TABLE}.double

  - dimension: dp
    type: number
    sql: ${TABLE}.dp

  - dimension: e
    type: number
    sql: ${TABLE}.e

  - dimension: er
    type: number
    sql: ${TABLE}.er

  - dimension: era
    type: number
    sql: ${TABLE}.era

  - dimension: fp
    type: number
    sql: ${TABLE}.fp

  - dimension: franchise_id
    type: string
    sql: ${TABLE}.franchise_id

  - dimension: g
    type: number
    sql: ${TABLE}.g

  - dimension: ghome
    type: number
    sql: ${TABLE}.ghome

  - dimension: h
    type: number
    sql: ${TABLE}.h

  - dimension: ha
    type: number
    sql: ${TABLE}.ha

  - dimension: hbp
    type: number
    sql: ${TABLE}.hbp

  - dimension: hr
    type: number
    sql: ${TABLE}.hr

  - dimension: hra
    type: number
    sql: ${TABLE}.hra

  - dimension: ipouts
    type: number
    sql: ${TABLE}.ipouts

  - dimension: l
    type: number
    sql: ${TABLE}.l

  - dimension: league_id
    type: string
    sql: ${TABLE}.league_id

  - dimension: lg_win
    type: string
    sql: ${TABLE}.lg_win

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: park
    type: string
    sql: ${TABLE}.park

  - dimension: ppf
    type: number
    sql: ${TABLE}.ppf

  - dimension: r
    type: number
    sql: ${TABLE}.r

  - dimension: ra
    type: number
    sql: ${TABLE}.ra

  - dimension: rank
    type: number
    sql: ${TABLE}.rank

  - dimension: sb
    type: number
    sql: ${TABLE}.sb

  - dimension: sf
    type: number
    sql: ${TABLE}.sf

  - dimension: sho
    type: number
    sql: ${TABLE}.sho

  - dimension: so
    type: number
    sql: ${TABLE}.so

  - dimension: soa
    type: number
    sql: ${TABLE}.soa

  - dimension: sv
    type: number
    sql: ${TABLE}.sv

  - dimension: team_id_br
    type: string
    sql: ${TABLE}.team_id_br

  - dimension: team_id_lahman45
    type: string
    sql: ${TABLE}.team_id_lahman45

  - dimension: team_id_retro
    type: string
    sql: ${TABLE}.team_id_retro

  - dimension: triple
    type: number
    sql: ${TABLE}.triple

  - dimension: w
    type: number
    sql: ${TABLE}.w

  - dimension: wc_win
    type: string
    sql: ${TABLE}.wc_win

  - dimension: ws_win
    type: string
    sql: ${TABLE}.ws_win

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - team_id
    - name
    - all_star.count
    - appearances.count
    - batting.count
    - batting_postseason.count
    - fielding.count
    - fielding_postseason.count
    - home_game.count
    - manager.count
    - manager_half.count
    - pitching.count
    - pitching_postseason.count
    - salary.count
    - team_half.count

