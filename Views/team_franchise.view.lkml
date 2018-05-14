view: team_franchise {
  sql_table_name: public.team_franchise ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active = 'Y' ;;
  }

  dimension: franchise_id {
    label: "Franchise"
    type: string
    sql: ${TABLE}.franchise_id ;;
  }

  dimension: franchise_name {
    label: "Name"
    type: string
    sql: ${TABLE}.franchise_name ;;
  }

  dimension: na_assoc {
    label: "Association"
    description: "National Association team franchise played as"
    type: string
    sql: ${TABLE}.na_assoc ;;
  }

  measure: count {
    type: count
    drill_fields: [franchise_name]
  }
}
