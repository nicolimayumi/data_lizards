# The name of this view in Looker is "Store Website"
view: store_website {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.store_website ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: default_group_id {
    type: number
    sql: ${TABLE}.default_group_id ;;
  }

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_default {
    type: sum
    sql: ${is_default} ;;
  }

  measure: average_is_default {
    type: average
    sql: ${is_default} ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
