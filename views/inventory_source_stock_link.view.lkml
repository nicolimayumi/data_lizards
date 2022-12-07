# The name of this view in Looker is "Inventory Source Stock Link"
view: inventory_source_stock_link {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.inventory_source_stock_link ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Link ID" in Explore.

  dimension: link_id {
    type: number
    sql: ${TABLE}.link_id ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_priority {
    type: sum
    sql: ${priority} ;;
  }

  measure: average_priority {
    type: average
    sql: ${priority} ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.source_code ;;
  }

  dimension: stock_id {
    type: number
    sql: ${TABLE}.stock_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
