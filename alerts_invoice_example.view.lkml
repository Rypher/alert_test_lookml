view: alerts_invoice_example {
  sql_table_name: public.alerts_invoice_example ;;

#   created_date timestamp,
#   completed_date timestamp,
#   department VARCHAR(256),
#   status VARCHAR(256),
#   amount decimal(10, 2)


  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: example {
    type: string
    sql: ${TABLE}.example ;;
  }

  dimension_group: created_date {
    type: time
    timeframes: [
      raw,
      hour,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: completed_date {
    type: time
    timeframes: [
      raw,
      hour,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.completed_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum {
    type: sum
    sql: ${TABLE}.amount ;;
    drill_fields: []
  }
}
