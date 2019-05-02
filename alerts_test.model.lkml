connection: "alerts_rds_postgres"

# include all the views
include: "*.view"

datagroup: alerts_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alerts_test_default_datagroup

explore: alerts_time_series {}
