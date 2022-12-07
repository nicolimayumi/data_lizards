# The name of this view in Looker is "Cataloginventory Stock Item"
view: cataloginventory_stock_item {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.cataloginventory_stock_item ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Backorders" in Explore.

  dimension: backorders {
    type: number
    sql: ${TABLE}.backorders ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_backorders {
    type: sum
    sql: ${backorders} ;;
  }

  measure: average_backorders {
    type: average
    sql: ${backorders} ;;
  }

  dimension: enable_qty_increments {
    type: number
    sql: ${TABLE}.enable_qty_increments ;;
  }

  dimension: is_decimal_divided {
    type: number
    sql: ${TABLE}.is_decimal_divided ;;
  }

  dimension: is_in_stock {
    type: number
    sql: ${TABLE}.is_in_stock ;;
  }

  dimension: is_qty_decimal {
    type: number
    sql: ${TABLE}.is_qty_decimal ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: low_stock {
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
    sql: ${TABLE}.low_stock_date ;;
  }

  dimension: manage_stock {
    type: number
    sql: ${TABLE}.manage_stock ;;
  }

  dimension: max_sale_qty {
    type: number
    sql: ${TABLE}.max_sale_qty ;;
  }

  dimension: min_qty {
    type: number
    sql: ${TABLE}.min_qty ;;
  }

  dimension: min_sale_qty {
    type: number
    sql: ${TABLE}.min_sale_qty ;;
  }

  dimension: notify_stock_qty {
    type: number
    sql: ${TABLE}.notify_stock_qty ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: qty_increments {
    type: number
    sql: ${TABLE}.qty_increments ;;
  }

  dimension: stock_id {
    type: number
    sql: ${TABLE}.stock_id ;;
  }

  dimension: stock_status_changed_auto {
    type: number
    sql: ${TABLE}.stock_status_changed_auto ;;
  }

  dimension: use_config_backorders {
    type: number
    sql: ${TABLE}.use_config_backorders ;;
  }

  dimension: use_config_enable_qty_inc {
    type: number
    sql: ${TABLE}.use_config_enable_qty_inc ;;
  }

  dimension: use_config_manage_stock {
    type: number
    sql: ${TABLE}.use_config_manage_stock ;;
  }

  dimension: use_config_max_sale_qty {
    type: number
    sql: ${TABLE}.use_config_max_sale_qty ;;
  }

  dimension: use_config_min_qty {
    type: number
    sql: ${TABLE}.use_config_min_qty ;;
  }

  dimension: use_config_min_sale_qty {
    type: number
    sql: ${TABLE}.use_config_min_sale_qty ;;
  }

  dimension: use_config_notify_stock_qty {
    type: number
    sql: ${TABLE}.use_config_notify_stock_qty ;;
  }

  dimension: use_config_qty_increments {
    type: number
    sql: ${TABLE}.use_config_qty_increments ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
