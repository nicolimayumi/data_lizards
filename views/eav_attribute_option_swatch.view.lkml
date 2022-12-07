# The name of this view in Looker is "Eav Attribute Option Swatch"
view: eav_attribute_option_swatch {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.eav_attribute_option_swatch ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Option ID" in Explore.

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: swatch_id {
    type: number
    sql: ${TABLE}.swatch_id ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_type {
    type: sum
    sql: ${type} ;;
  }

  measure: average_type {
    type: average
    sql: ${type} ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name]
  }
}
