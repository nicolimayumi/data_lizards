# The name of this view in Looker is "Quote Payment"
view: quote_payment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.quote_payment ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Additional Data" in Explore.

  dimension: additional_data {
    type: string
    sql: ${TABLE}.additional_data ;;
  }

  dimension: additional_information {
    type: string
    sql: ${TABLE}.additional_information ;;
  }

  dimension: cc_cid_enc {
    type: string
    sql: ${TABLE}.cc_cid_enc ;;
  }

  dimension: cc_exp_month {
    type: string
    sql: ${TABLE}.cc_exp_month ;;
  }

  dimension: cc_exp_year {
    type: number
    sql: ${TABLE}.cc_exp_year ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cc_exp_year {
    type: sum
    sql: ${cc_exp_year} ;;
  }

  measure: average_cc_exp_year {
    type: average
    sql: ${cc_exp_year} ;;
  }

  dimension: cc_last_4 {
    type: string
    sql: ${TABLE}.cc_last_4 ;;
  }

  dimension: cc_number_enc {
    type: string
    sql: ${TABLE}.cc_number_enc ;;
  }

  dimension: cc_owner {
    type: string
    sql: ${TABLE}.cc_owner ;;
  }

  dimension: cc_ss_issue {
    type: string
    sql: ${TABLE}.cc_ss_issue ;;
  }

  dimension: cc_ss_owner {
    type: string
    sql: ${TABLE}.cc_ss_owner ;;
  }

  dimension: cc_ss_start_month {
    type: number
    sql: ${TABLE}.cc_ss_start_month ;;
  }

  dimension: cc_ss_start_year {
    type: number
    sql: ${TABLE}.cc_ss_start_year ;;
  }

  dimension: cc_type {
    type: string
    sql: ${TABLE}.cc_type ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: paypal_correlation_id {
    type: string
    sql: ${TABLE}.paypal_correlation_id ;;
  }

  dimension: paypal_payer_id {
    type: string
    sql: ${TABLE}.paypal_payer_id ;;
  }

  dimension: paypal_payer_status {
    type: string
    sql: ${TABLE}.paypal_payer_status ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: quote_id {
    type: number
    sql: ${TABLE}.quote_id ;;
  }

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
    drill_fields: []
  }
}
