# The name of this view in Looker is "Report Event Types"
view: report_event_types {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.report_event_types ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer Login" in Explore.

  dimension: customer_login {
    type: number
    sql: ${TABLE}.customer_login ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_customer_login {
    type: sum
    sql: ${customer_login} ;;
  }

  measure: average_customer_login {
    type: average
    sql: ${customer_login} ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_type_id {
    type: number
    sql: ${TABLE}.event_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name]
  }
}
