# The name of this view in Looker is "Newsletter Queue"
view: newsletter_queue {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.newsletter_queue ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Newsletter Sender Email" in Explore.

  dimension: newsletter_sender_email {
    type: string
    sql: ${TABLE}.newsletter_sender_email ;;
  }

  dimension: newsletter_sender_name {
    type: string
    sql: ${TABLE}.newsletter_sender_name ;;
  }

  dimension: newsletter_styles {
    type: string
    sql: ${TABLE}.newsletter_styles ;;
  }

  dimension: newsletter_subject {
    type: string
    sql: ${TABLE}.newsletter_subject ;;
  }

  dimension: newsletter_text {
    type: string
    sql: ${TABLE}.newsletter_text ;;
  }

  dimension: newsletter_type {
    type: number
    sql: ${TABLE}.newsletter_type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_newsletter_type {
    type: sum
    sql: ${newsletter_type} ;;
  }

  measure: average_newsletter_type {
    type: average
    sql: ${newsletter_type} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: queue_finish {
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
    sql: ${TABLE}.queue_finish_at ;;
  }

  dimension: queue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.queue_id ;;
  }

  dimension_group: queue_start {
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
    sql: ${TABLE}.queue_start_at ;;
  }

  dimension: queue_status {
    type: number
    sql: ${TABLE}.queue_status ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  measure: count {
    type: count
    drill_fields: [newsletter_sender_name, queue.name, queue.id]
  }
}
