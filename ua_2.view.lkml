

view: ua_2 {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT {{ _user_attributes['id'] }} as id
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
}
#
