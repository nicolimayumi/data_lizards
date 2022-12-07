# The name of this view in Looker is "Sales Order Tax Item"
view: sales_order_tax_item {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.sales_order_tax_item ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  dimension: associated_item_id {
    type: number
    sql: ${TABLE}.associated_item_id ;;
  }

  dimension: base_amount {
    type: number
    sql: ${TABLE}.base_amount ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: real_amount {
    type: number
    sql: ${TABLE}.real_amount ;;
  }

  dimension: real_base_amount {
    type: number
    sql: ${TABLE}.real_base_amount ;;
  }

  dimension: tax_id {
    type: number
    sql: ${TABLE}.tax_id ;;
  }

  dimension: tax_item_id {
    type: number
    sql: ${TABLE}.tax_item_id ;;
  }

  dimension: tax_percent {
    type: number
    sql: ${TABLE}.tax_percent ;;
  }

  dimension: taxable_item_type {
    type: string
    sql: ${TABLE}.taxable_item_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
