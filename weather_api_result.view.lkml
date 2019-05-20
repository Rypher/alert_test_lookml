view: weather_api_result {
  sql_table_name: public.weather_api_result_view ;;

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
      hour,
      minute15,
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

  dimension: city {
    type:  string
    sql: ${TABLE}.city  ;;
  }

  dimension: rain {
    type:  number
    sql: ${TABLE}.rain;;
  }

  dimension: temp {
    type:  number
    sql: ${TABLE}.temp ;;
  }

  dimension: wind {
    type:  number
    sql: ${TABLE}.wind ;;
  }

  measure: count {
    type: count
  }

  measure: avg_temp{
    type: average
    sql: ${TABLE}.temp;;
  }

  measure: avg_rain{
    type: average
    sql: ${TABLE}.rain;;
  }

  measure: avg_wind{
    type:  average
    sql: ${TABLE}.wind ;;
  }

}
