connection: "alerts_rds_postgres"

# include all the views
include: "*.view"

datagroup: alerts_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alerts_test_default_datagroup

explore: alerts_time_series {}

explore: alerts_invoice_example {}

explore: weather_api_result {}

explore: v_test {}
explore: v_monitor {}
explore: v_alert {}

explore: ua_2 {}
