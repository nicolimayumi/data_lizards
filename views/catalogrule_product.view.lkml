# The name of this view in Looker is "Catalogrule Product"
view: catalogrule_product {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalogrule_product ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Action Amount" in Explore.

  dimension: action_amount {
    type: number
    sql: ${TABLE}.action_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_action_amount {
    type: sum
    sql: ${action_amount} ;;
  }

  measure: average_action_amount {
    type: average
    sql: ${action_amount} ;;
  }

  dimension: action_operator {
    type: string
    sql: ${TABLE}.action_operator ;;
  }

  dimension: action_stop {
    type: number
    sql: ${TABLE}.action_stop ;;
  }

  dimension: customer_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: from_time {
    type: number
    sql: ${TABLE}.from_time ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: rule_product_id {
    type: number
    sql: ${TABLE}.rule_product_id ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: to_time {
    type: number
    sql: ${TABLE}.to_time ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_group.customer_group_id]
  }
}
