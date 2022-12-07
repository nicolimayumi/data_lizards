# The name of this view in Looker is "Widget Instance"
view: widget_instance {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.widget_instance ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Instance ID" in Explore.

  dimension: instance_id {
    type: number
    sql: ${TABLE}.instance_id ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sort_order {
    type: sum
    sql: ${sort_order} ;;
  }

  measure: average_sort_order {
    type: average
    sql: ${sort_order} ;;
  }

  dimension: store_ids {
    type: string
    sql: ${TABLE}.store_ids ;;
  }

  dimension: theme_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.theme_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: widget_parameters {
    type: string
    sql: ${TABLE}.widget_parameters ;;
  }

  measure: count {
    type: count
    drill_fields: [theme.theme_id]
  }
}
