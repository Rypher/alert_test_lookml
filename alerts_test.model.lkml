connection: "alerts_rds_postgres"

include: "*.view"
include: "*.dashboard"


datagroup: alerts_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 seconds"
}

persist_with: alerts_test_default_datagroup

explore: alerts_invoice_example {}
explore: weather_api_result {}
explore: ua_2 {}