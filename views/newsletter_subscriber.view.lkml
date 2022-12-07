# The name of this view in Looker is "Newsletter Subscriber"
view: newsletter_subscriber {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.newsletter_subscriber ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: change_status {
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
    sql: ${TABLE}.change_status_at ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer ID" in Explore.

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: subscriber_confirm_code {
    type: string
    sql: ${TABLE}.subscriber_confirm_code ;;
  }

  dimension: subscriber_email {
    type: string
    sql: ${TABLE}.subscriber_email ;;
  }

  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
  }

  dimension: subscriber_status {
    type: number
    sql: ${TABLE}.subscriber_status ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_subscriber_status {
    type: sum
    sql: ${subscriber_status} ;;
  }

  measure: average_subscriber_status {
    type: average
    sql: ${subscriber_status} ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name]
  }
}
