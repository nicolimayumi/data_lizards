# The name of this view in Looker is "Sales Shipping Aggregated"
view: sales_shipping_aggregated {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.sales_shipping_aggregated ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Order Status" in Explore.

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_orders_count {
    type: sum
    sql: ${orders_count} ;;
  }

  measure: average_orders_count {
    type: average
    sql: ${orders_count} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: period {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.period ;;
  }

  dimension: shipping_description {
    type: string
    sql: ${TABLE}.shipping_description ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: total_shipping {
    type: number
    sql: ${TABLE}.total_shipping ;;
  }

  dimension: total_shipping_actual {
    type: number
    sql: ${TABLE}.total_shipping_actual ;;
  }

  measure: count {
    type: count
    drill_fields: [id, store.store_id, store.name]
  }
}
