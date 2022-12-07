# The name of this view in Looker is "Downloadable Link Purchased Item"
view: downloadable_link_purchased_item {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.downloadable_link_purchased_item ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Is Shareable" in Explore.

  dimension: is_shareable {
    type: number
    sql: ${TABLE}.is_shareable ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: link_file {
    type: string
    sql: ${TABLE}.link_file ;;
  }

  dimension: link_hash {
    type: string
    sql: ${TABLE}.link_hash ;;
  }

  dimension: link_id {
    type: number
    sql: ${TABLE}.link_id ;;
  }

  dimension: link_title {
    type: string
    sql: ${TABLE}.link_title ;;
  }

  dimension: link_type {
    type: string
    sql: ${TABLE}.link_type ;;
  }

  dimension: link_url {
    type: string
    sql: ${TABLE}.link_url ;;
  }

  dimension: number_of_downloads_bought {
    type: number
    sql: ${TABLE}.number_of_downloads_bought ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_downloads_bought {
    type: sum
    sql: ${number_of_downloads_bought} ;;
  }

  measure: average_number_of_downloads_bought {
    type: average
    sql: ${number_of_downloads_bought} ;;
  }

  dimension: number_of_downloads_used {
    type: number
    sql: ${TABLE}.number_of_downloads_used ;;
  }

  dimension: order_item_id {
    type: number
    sql: ${TABLE}.order_item_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: purchased_id {
    type: number
    sql: ${TABLE}.purchased_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
