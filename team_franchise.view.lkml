view: team_franchise {
  sql_table_name: public.team_franchise ;;

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: franchise_id {
    type: string
    sql: ${TABLE}.franchise_id ;;
  }

  dimension: franchise_name {
    type: string
    sql: ${TABLE}.franchise_name ;;
  }

  dimension: na_assoc {
    type: string
    sql: ${TABLE}.na_assoc ;;
  }

  measure: count {
    type: count
    drill_fields: [franchise_name]
  }
}
