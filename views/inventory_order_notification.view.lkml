# The name of this view in Looker is "Inventory Order Notification"
view: inventory_order_notification {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.inventory_order_notification ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Notification Sent" in Explore.

  dimension: notification_sent {
    type: number
    sql: ${TABLE}.notification_sent ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_notification_sent {
    type: sum
    sql: ${notification_sent} ;;
  }

  measure: average_notification_sent {
    type: average
    sql: ${notification_sent} ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: send_notification {
    type: number
    sql: ${TABLE}.send_notification ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
