# The name of this view in Looker is "Sales Order Status State"
view: sales_order_status_state {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.sales_order_status_state ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Is Default" in Explore.

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_default {
    type: sum
    sql: ${is_default} ;;
  }

  measure: average_is_default {
    type: average
    sql: ${is_default} ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: visible_on_front {
    type: number
    sql: ${TABLE}.visible_on_front ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
