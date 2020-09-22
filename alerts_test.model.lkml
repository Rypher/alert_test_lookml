connection: "alerts_rds_postgres"

include: "*.view"
include: "*.dashboard"


datagroup: alerts_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 seconds"
}

# persist_with: alerts_test_default_datagroup

persist_for: "5 hours"
# persist_for: "0 seconds"


explore: alerts_invoice_example {}
explore: weather_api_result {}
explore: weather_view_with_errors {}
explore: ua_2 {}
