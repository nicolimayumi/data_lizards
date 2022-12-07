# The name of this view in Looker is "Email Template"
view: email_template {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.email_template ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: added {
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
    sql: ${TABLE}.added_at ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Is Legacy" in Explore.

  dimension: is_legacy {
    type: yesno
    sql: ${TABLE}.is_legacy ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified_at ;;
  }

  dimension: orig_template_code {
    type: string
    sql: ${TABLE}.orig_template_code ;;
  }

  dimension: orig_template_variables {
    type: string
    sql: ${TABLE}.orig_template_variables ;;
  }

  dimension: template_code {
    type: string
    sql: ${TABLE}.template_code ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }

  dimension: template_sender_email {
    type: string
    sql: ${TABLE}.template_sender_email ;;
  }

  dimension: template_sender_name {
    type: string
    sql: ${TABLE}.template_sender_name ;;
  }

  dimension: template_styles {
    type: string
    sql: ${TABLE}.template_styles ;;
  }

  dimension: template_subject {
    type: string
    sql: ${TABLE}.template_subject ;;
  }

  dimension: template_text {
    type: string
    sql: ${TABLE}.template_text ;;
  }

  dimension: template_type {
    type: number
    sql: ${TABLE}.template_type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_template_type {
    type: sum
    sql: ${template_type} ;;
  }

  measure: average_template_type {
    type: average
    sql: ${template_type} ;;
  }

  measure: count {
    type: count
    drill_fields: [template_sender_name]
  }
}
