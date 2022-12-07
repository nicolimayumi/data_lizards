# The name of this view in Looker is "Newsletter Problem"
view: newsletter_problem {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.newsletter_problem ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Problem Error Code" in Explore.

  dimension: problem_error_code {
    type: number
    sql: ${TABLE}.problem_error_code ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_problem_error_code {
    type: sum
    sql: ${problem_error_code} ;;
  }

  measure: average_problem_error_code {
    type: average
    sql: ${problem_error_code} ;;
  }

  dimension: problem_error_text {
    type: string
    sql: ${TABLE}.problem_error_text ;;
  }

  dimension: problem_id {
    type: number
    sql: ${TABLE}.problem_id ;;
  }

  dimension: queue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.queue_id ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
  }

  measure: count {
    type: count
    drill_fields: [queue.name, queue.id]
  }
}
