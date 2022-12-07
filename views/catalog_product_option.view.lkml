# The name of this view in Looker is "Catalog Product Option"
view: catalog_product_option {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_product_option ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "File Extension" in Explore.

  dimension: file_extension {
    type: string
    sql: ${TABLE}.file_extension ;;
  }

  dimension: image_size_x {
    type: number
    sql: ${TABLE}.image_size_x ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_image_size_x {
    type: sum
    sql: ${image_size_x} ;;
  }

  measure: average_image_size_x {
    type: average
    sql: ${image_size_x} ;;
  }

  dimension: image_size_y {
    type: number
    sql: ${TABLE}.image_size_y ;;
  }

  dimension: is_require {
    type: number
    sql: ${TABLE}.is_require ;;
  }

  dimension: max_characters {
    type: number
    sql: ${TABLE}.max_characters ;;
  }

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
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
