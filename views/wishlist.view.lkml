# The name of this view in Looker is "Wishlist"
view: wishlist {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.wishlist ;;
  drill_fields: [wishlist_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: wishlist_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.wishlist_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer ID" in Explore.

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: shared {
    type: number
    sql: ${TABLE}.shared ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_shared {
    type: sum
    sql: ${shared} ;;
  }

  measure: average_shared {
    type: average
    sql: ${shared} ;;
  }

  dimension: sharing_code {
    type: string
    sql: ${TABLE}.sharing_code ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
    drill_fields: [wishlist_id, wishlist_item.count]
  }
}
