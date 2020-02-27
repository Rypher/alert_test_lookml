view: alerts_time_series {
  sql_table_name: public.alerts_time_series ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      hour,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum2 {
    type: sum
    sql: ${TABLE}.value ;;
    drill_fields: []
  }
}
