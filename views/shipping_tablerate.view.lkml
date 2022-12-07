# The name of this view in Looker is "Shipping Tablerate"
view: shipping_tablerate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.shipping_tablerate ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition Name" in Explore.

  dimension: condition_name {
    type: string
    sql: ${TABLE}.condition_name ;;
  }

  dimension: condition_value {
    type: number
    sql: ${TABLE}.condition_value ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cost {
    type: sum
    sql: ${cost} ;;
  }

  measure: average_cost {
    type: average
    sql: ${cost} ;;
  }

  dimension: dest_country_id {
    type: string
    sql: ${TABLE}.dest_country_id ;;
  }

  dimension: dest_region_id {
    type: number
    sql: ${TABLE}.dest_region_id ;;
  }

  dimension: dest_zip {
    type: string
    sql: ${TABLE}.dest_zip ;;
  }

  dimension: pk {
    type: number
    sql: ${TABLE}.pk ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [condition_name]
  }
}
