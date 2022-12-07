# The name of this view in Looker is "Inventory Low Stock Notification Configuration"
view: inventory_low_stock_notification_configuration {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.inventory_low_stock_notification_configuration ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Notify Stock Qty" in Explore.

  dimension: notify_stock_qty {
    type: number
    sql: ${TABLE}.notify_stock_qty ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_notify_stock_qty {
    type: sum
    sql: ${notify_stock_qty} ;;
  }

  measure: average_notify_stock_qty {
    type: average
    sql: ${notify_stock_qty} ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.source_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
