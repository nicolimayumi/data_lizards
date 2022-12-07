# The name of this view in Looker is "Catalog Product Bundle Option"
view: catalog_product_bundle_option {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_product_bundle_option ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Option ID" in Explore.

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_position {
    type: sum
    sql: ${position} ;;
  }

  measure: average_position {
    type: average
    sql: ${position} ;;
  }

  dimension: required {
    type: number
    sql: ${TABLE}.required ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
