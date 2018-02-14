view: pdt_timeout {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:
      SELECT 1 as "sleep"
      ;;
    indexes: ["sleep"]
    sql_trigger_value: CURRENT_DATE ;;
  }
  dimension: sleep {
    type: number
    sql: ${TABLE}.sleep ;;
  }

  measure: count {
    type: count
  }
}
