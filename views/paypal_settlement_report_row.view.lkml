# The name of this view in Looker is "Paypal Settlement Report Row"
view: paypal_settlement_report_row {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.paypal_settlement_report_row ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Consumer ID" in Explore.

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.consumer_id ;;
  }

  dimension: custom_field {
    type: string
    sql: ${TABLE}.custom_field ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_fee_amount {
    type: sum
    sql: ${fee_amount} ;;
  }

  measure: average_fee_amount {
    type: average
    sql: ${fee_amount} ;;
  }

  dimension: fee_currency {
    type: string
    sql: ${TABLE}.fee_currency ;;
  }

  dimension: fee_debit_or_credit {
    type: string
    sql: ${TABLE}.fee_debit_or_credit ;;
  }

  dimension: gross_transaction_amount {
    type: number
    sql: ${TABLE}.gross_transaction_amount ;;
  }

  dimension: gross_transaction_currency {
    type: string
    sql: ${TABLE}.gross_transaction_currency ;;
  }

  dimension: invoice_id {
    type: string
    sql: ${TABLE}.invoice_id ;;
  }

  dimension: payment_tracking_id {
    type: string
    sql: ${TABLE}.payment_tracking_id ;;
  }

  dimension: paypal_reference_id {
    type: string
    sql: ${TABLE}.paypal_reference_id ;;
  }

  dimension: paypal_reference_id_type {
    type: string
    sql: ${TABLE}.paypal_reference_id_type ;;
  }

  dimension: report_id {
    type: number
    sql: ${TABLE}.report_id ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}.row_id ;;
  }

  dimension: store_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: transaction_completion {
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
    sql: ${TABLE}.transaction_completion_date ;;
  }

  dimension: transaction_debit_or_credit {
    type: string
    sql: ${TABLE}.transaction_debit_or_credit ;;
  }

  dimension: transaction_event_code {
    type: string
    sql: ${TABLE}.transaction_event_code ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension_group: transaction_initiation {
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
    sql: ${TABLE}.transaction_initiation_date ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name]
  }
}
