view: pdt_timeout {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:
      SELECT pg_sleep(1800) as "sleep"
      ;;
  }
  dimension: sleep {
    type: number
    sql: ${TABLE}.sleep ;;
  }
}
