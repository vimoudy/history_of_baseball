view: player {
  sql_table_name: public.player ;;

  dimension: player_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.player_id ;;
  }

  dimension: bats {
    label: "Bats"
    description: "Left, Right, Both"
    type: string
    case: {
      when: {
        sql: ${TABLE}.bats = 'L' ;;
        label: "Left"
      }
      when: {
        sql: ${TABLE}.bats = 'R' ;;
        label: "Right"
      }
      when: {
        sql: ${TABLE}.bats = 'B' ;;
        label: "Both"
      }
    }
  }

  dimension: bbref_id {
    description: "ID used by Baseball Reference website"
    type: string
    sql: ${TABLE}.bbref_id ;;
  }

  dimension: birth_city {
    hidden: yes
    type: string
    sql: ${TABLE}.birth_city ;;
  }

  dimension: birth_country {
    hidden: yes
    type: string
    sql: ${TABLE}.birth_country ;;
  }

  dimension: birth_day {
    hidden: yes
    type: number
    sql: ${TABLE}.birth_day ;;
  }

  dimension: birth_month {
    hidden: yes
    type: number
    sql: ${TABLE}.birth_month ;;
  }

  dimension: birth_state {
    hidden: yes
    type: string
    sql: ${TABLE}.birth_state ;;
  }

  dimension: birth_place{
    type: string
    sql: ${birth_city} || ', ' || ${birth_state} || '. ' || ${birth_country} ;;
  }

  dimension: birth_year {
    hidden: yes
    type: number
    sql: ${TABLE}.birth_year ;;
  }

  dimension_group: birthday {
    type: time
    timeframes: [date, month, year, day_of_month]
    sql:  to_date(to_char(birth_year::real, '9999') || to_char(birth_month::real, '99') || to_char(birth_day::real, '99'), 'YYYY/MM/DD') ;;
  }

  dimension: death_city {
    hidden: yes
    type: string
    sql: ${TABLE}.death_city ;;
  }

  dimension: death_country {
    hidden: yes
    type: string
    sql: ${TABLE}.death_country ;;
  }

  dimension: death_day {
    hidden: yes
    type: number
    sql: ${TABLE}.death_day ;;
  }

  dimension: death_month {
    hidden: yes
    type: number
    sql: ${TABLE}.death_month ;;
  }

  dimension: death_state {
    hidden: yes
    type: string
    sql: ${TABLE}.death_state ;;
  }

  dimension: death_place {
    type: string
    sql: ${death_city} || ', ' || ${death_state} || '. ' || ${death_country} ;;
  }

  dimension: death_year {
    hidden: yes
    type: number
    sql: ${TABLE}.death_year ;;
  }

  dimension_group: death_day {
    type: time
    timeframes: [date, month, year, day_of_month]
    sql:  to_date(to_char(death_year::real, '9999') || to_char(death_month::real, '99') || to_char(death_day::real, '99'), 'YYYY/MM/DD') ;;
  }
  dimension: debut {
    type: string
    sql: ${TABLE}.debut ;;
  }

  dimension: final_game {
    type: string
    sql: ${TABLE}.final_game ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: name_first {
    hidden: yes
    type: string
    sql: ${TABLE}.name_first ;;
  }

  dimension: name_given {
    type: string
    hidden: yes
    sql: ${TABLE}.name_given ;;
    link: {
      label: "Wiki"
      url: "https://en.wikipedia.org/wiki/{{name_first._value}}_{{name_last._value}}"
      icon_url: "https://en.wikipedia.org/favicon.ico"
    }

  }

  dimension: name {
    type: string
    sql: concat(${name_first} || ' ' || ${name_last}) ;;
    link: {
      label: "Wiki"
      url: "https://en.wikipedia.org/wiki/{{name_first._value}}_{{name_last._value}}"
      icon_url: "https://en.wikipedia.org/favicon.ico"
    }
    link: {
      label: "Player Stats"
      url: "https://localhost:9999/dashboards/9?Name={{name_first._value}}%20{{name_last._value}}"
      icon_url: "https://www.looker.com/favicon.ico"
    }
  }

  dimension: name_last {
    type: string
    hidden: yes
    sql: ${TABLE}.name_last ;;
  }

  dimension: retro_id {
    type: string
    sql: ${TABLE}.retro_id ;;
  }

  dimension: throws {
    type: string
    sql: ${TABLE}.throws ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [player_id, name_given, all_star.count, appearances.count, batting.count, batting_postseason.count, fielding.count, fielding_outfield.count, fielding_postseason.count, hall_of_fame.count, manager.count, manager_award.count, manager_award_vote.count, manager_half.count, pitching.count, pitching_postseason.count, player_award.count, player_award_vote.count, player_college.count, salary.count]
  }

  set: hitting_detail {
    fields: [name_given, batting.h, batting.ab, batting_postseason.h, batting_postseason.ab]
  }
}
