# The name of this view in Looker is "Sales Sequence Profile"
view: sales_sequence_profile {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.sales_sequence_profile ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Is Active" in Explore.

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: max_value {
    type: number
    sql: ${TABLE}.max_value ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_max_value {
    type: sum
    sql: ${max_value} ;;
  }

  measure: average_max_value {
    type: average
    sql: ${max_value} ;;
  }

  dimension: meta_id {
    type: number
    sql: ${TABLE}.meta_id ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  dimension: profile_id {
    type: number
    sql: ${TABLE}.profile_id ;;
  }

  dimension: start_value {
    type: number
    sql: ${TABLE}.start_value ;;
  }

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: warning_value {
    type: number
    sql: ${TABLE}.warning_value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
