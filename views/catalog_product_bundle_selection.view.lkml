# The name of this view in Looker is "Catalog Product Bundle Selection"
view: catalog_product_bundle_selection {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_product_bundle_selection ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Is Default" in Explore.

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: parent_product_id {
    type: number
    sql: ${TABLE}.parent_product_id ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: selection_can_change_qty {
    type: number
    sql: ${TABLE}.selection_can_change_qty ;;
  }

  dimension: selection_id {
    type: number
    sql: ${TABLE}.selection_id ;;
  }

  dimension: selection_price_type {
    type: number
    sql: ${TABLE}.selection_price_type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_selection_price_type {
    type: sum
    sql: ${selection_price_type} ;;
  }

  measure: average_selection_price_type {
    type: average
    sql: ${selection_price_type} ;;
  }

  dimension: selection_price_value {
    type: number
    sql: ${TABLE}.selection_price_value ;;
  }

  dimension: selection_qty {
    type: number
    sql: ${TABLE}.selection_qty ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
