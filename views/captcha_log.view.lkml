# The name of this view in Looker is "Captcha Log"
view: captcha_log {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.captcha_log ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Count Captcha Log" in Explore.

  dimension: count_captcha_log {
    type: number
    sql: ${TABLE}.count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_count_captcha_log {
    type: sum
    sql: ${count_captcha_log} ;;
  }

  measure: average_count_captcha_log {
    type: average
    sql: ${count_captcha_log} ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
