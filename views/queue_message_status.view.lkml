# The name of this view in Looker is "Queue Message Status"
view: queue_message_status {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.queue_message_status ;;
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
  # This dimension will be called "Message ID" in Explore.

  dimension: message_id {
    type: number
    sql: ${TABLE}.message_id ;;
  }

  dimension: number_of_trials {
    type: number
    sql: ${TABLE}.number_of_trials ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_trials {
    type: sum
    sql: ${number_of_trials} ;;
  }

  measure: average_number_of_trials {
    type: average
    sql: ${number_of_trials} ;;
  }

  dimension: queue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.queue_id ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
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
    drill_fields: [id, queue.name, queue.id]
  }
}
