view: college {
  sql_table_name: public.college ;;

  dimension: college_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.college_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: name_full {
    label: "Name"
    type: string
    sql: ${TABLE}.name_full ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [college_id]
  }
}
