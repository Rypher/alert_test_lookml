view: weather_api_result {
  sql_table_name: public.weather_api_result ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: query {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."query_date" ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}."result" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
