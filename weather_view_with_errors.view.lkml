
view: weather_view_with_errors {
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

  measure: min_temp{
    type: min
    sql: ${TABLE}.temp;;
  }

  measure: max_temp{
    type: max
    sql: ${TABLE}.temp;;
  }

  measure: avg_temp{
    type: average
    sql: ${TABLE}.temp;;
  }

  measure: max_rain{
    type: max
    sql: ${TABLE}.rain_fail;;
  }

  measure: avg_rain{
    type: average
    sql: ${TABLE}.rain;;
  }

  measure: max_wind{
    type:  max
    sql: ${TABLE}.wind ;;
  }

  measure: avg_wind{
    type:  average
    sql: ${TABLE}.wind ;;
  }

}
