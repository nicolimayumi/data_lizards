# The name of this view in Looker is "Checkout Agreement"
view: checkout_agreement {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.checkout_agreement ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Agreement ID" in Explore.

  dimension: agreement_id {
    type: number
    sql: ${TABLE}.agreement_id ;;
  }

  dimension: checkbox_text {
    type: string
    sql: ${TABLE}.checkbox_text ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: content_height {
    type: string
    sql: ${TABLE}.content_height ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_active {
    type: sum
    sql: ${is_active} ;;
  }

  measure: average_is_active {
    type: average
    sql: ${is_active} ;;
  }

  dimension: is_html {
    type: number
    sql: ${TABLE}.is_html ;;
  }

  dimension: mode {
    type: number
    sql: ${TABLE}.mode ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
