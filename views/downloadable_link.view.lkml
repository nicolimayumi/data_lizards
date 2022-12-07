# The name of this view in Looker is "Downloadable Link"
view: downloadable_link {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.downloadable_link ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Is Shareable" in Explore.

  dimension: is_shareable {
    type: number
    sql: ${TABLE}.is_shareable ;;
  }

  dimension: link_file {
    type: string
    sql: ${TABLE}.link_file ;;
  }

  dimension: link_id {
    type: number
    sql: ${TABLE}.link_id ;;
  }

  dimension: link_type {
    type: string
    sql: ${TABLE}.link_type ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: number_of_downloads {
    type: number
    sql: ${TABLE}.number_of_downloads ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_downloads {
    type: sum
    sql: ${number_of_downloads} ;;
  }

  measure: average_number_of_downloads {
    type: average
    sql: ${number_of_downloads} ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: sample_file {
    type: string
    sql: ${TABLE}.sample_file ;;
  }

  dimension: sample_type {
    type: string
    sql: ${TABLE}.sample_type ;;
  }

  dimension: sample_url {
    type: string
    sql: ${TABLE}.sample_url ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
