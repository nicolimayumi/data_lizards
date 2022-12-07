# The name of this view in Looker is "Customer Eav Attribute"
view: customer_eav_attribute {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.customer_eav_attribute ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Attribute ID" in Explore.

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: data_model {
    type: string
    sql: ${TABLE}.data_model ;;
  }

  dimension: grid_filter_condition_type {
    type: number
    sql: ${TABLE}.grid_filter_condition_type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_grid_filter_condition_type {
    type: sum
    sql: ${grid_filter_condition_type} ;;
  }

  measure: average_grid_filter_condition_type {
    type: average
    sql: ${grid_filter_condition_type} ;;
  }

  dimension: input_filter {
    type: string
    sql: ${TABLE}.input_filter ;;
  }

  dimension: is_filterable_in_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_filterable_in_grid ;;
  }

  dimension: is_searchable_in_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_searchable_in_grid ;;
  }

  dimension: is_system {
    type: number
    sql: ${TABLE}.is_system ;;
  }

  dimension: is_used_in_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_used_in_grid ;;
  }

  dimension: is_visible {
    type: number
    sql: ${TABLE}.is_visible ;;
  }

  dimension: is_visible_in_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_visible_in_grid ;;
  }

  dimension: multiline_count {
    type: number
    sql: ${TABLE}.multiline_count ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: validate_rules {
    type: string
    sql: ${TABLE}.validate_rules ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
