# The name of this view in Looker is "Sales Order Payment"
view: sales_order_payment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.sales_order_payment ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Status" in Explore.

  dimension: account_status {
    type: string
    sql: ${TABLE}.account_status ;;
  }

  dimension: additional_data {
    type: string
    sql: ${TABLE}.additional_data ;;
  }

  dimension: additional_information {
    type: string
    sql: ${TABLE}.additional_information ;;
  }

  dimension: address_status {
    type: string
    sql: ${TABLE}.address_status ;;
  }

  dimension: amount_authorized {
    type: number
    sql: ${TABLE}.amount_authorized ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount_authorized {
    type: sum
    sql: ${amount_authorized} ;;
  }

  measure: average_amount_authorized {
    type: average
    sql: ${amount_authorized} ;;
  }

  dimension: amount_canceled {
    type: number
    sql: ${TABLE}.amount_canceled ;;
  }

  dimension: amount_ordered {
    type: number
    sql: ${TABLE}.amount_ordered ;;
  }

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amount_paid ;;
  }

  dimension: amount_refunded {
    type: number
    sql: ${TABLE}.amount_refunded ;;
  }

  dimension: anet_trans_method {
    type: string
    sql: ${TABLE}.anet_trans_method ;;
  }

  dimension: base_amount_authorized {
    type: number
    sql: ${TABLE}.base_amount_authorized ;;
  }

  dimension: base_amount_canceled {
    type: number
    sql: ${TABLE}.base_amount_canceled ;;
  }

  dimension: base_amount_ordered {
    type: number
    sql: ${TABLE}.base_amount_ordered ;;
  }

  dimension: base_amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.base_amount_paid ;;
  }

  dimension: base_amount_paid_online {
    type: number
    sql: ${TABLE}.base_amount_paid_online ;;
  }

  dimension: base_amount_refunded {
    type: number
    sql: ${TABLE}.base_amount_refunded ;;
  }

  dimension: base_amount_refunded_online {
    type: number
    sql: ${TABLE}.base_amount_refunded_online ;;
  }

  dimension: base_shipping_amount {
    type: number
    sql: ${TABLE}.base_shipping_amount ;;
  }

  dimension: base_shipping_captured {
    type: number
    sql: ${TABLE}.base_shipping_captured ;;
  }

  dimension: base_shipping_refunded {
    type: number
    sql: ${TABLE}.base_shipping_refunded ;;
  }

  dimension: cc_approval {
    type: string
    sql: ${TABLE}.cc_approval ;;
  }

  dimension: cc_avs_status {
    type: string
    sql: ${TABLE}.cc_avs_status ;;
  }

  dimension: cc_cid_status {
    type: string
    sql: ${TABLE}.cc_cid_status ;;
  }

  dimension: cc_debug_request_body {
    type: string
    sql: ${TABLE}.cc_debug_request_body ;;
  }

  dimension: cc_debug_response_body {
    type: string
    sql: ${TABLE}.cc_debug_response_body ;;
  }

  dimension: cc_debug_response_serialized {
    type: string
    sql: ${TABLE}.cc_debug_response_serialized ;;
  }

  dimension: cc_exp_month {
    type: string
    sql: ${TABLE}.cc_exp_month ;;
  }

  dimension: cc_exp_year {
    type: string
    sql: ${TABLE}.cc_exp_year ;;
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

  dimension: cc_secure_verify {
    type: string
    sql: ${TABLE}.cc_secure_verify ;;
  }

  dimension: cc_ss_issue {
    type: string
    sql: ${TABLE}.cc_ss_issue ;;
  }

  dimension: cc_ss_start_month {
    type: string
    sql: ${TABLE}.cc_ss_start_month ;;
  }

  dimension: cc_ss_start_year {
    type: string
    sql: ${TABLE}.cc_ss_start_year ;;
  }

  dimension: cc_status {
    type: string
    sql: ${TABLE}.cc_status ;;
  }

  dimension: cc_status_description {
    type: string
    sql: ${TABLE}.cc_status_description ;;
  }

  dimension: cc_trans_id {
    type: string
    sql: ${TABLE}.cc_trans_id ;;
  }

  dimension: cc_type {
    type: string
    sql: ${TABLE}.cc_type ;;
  }

  dimension: echeck_account_name {
    type: string
    sql: ${TABLE}.echeck_account_name ;;
  }

  dimension: echeck_account_type {
    type: string
    sql: ${TABLE}.echeck_account_type ;;
  }

  dimension: echeck_bank_name {
    type: string
    sql: ${TABLE}.echeck_bank_name ;;
  }

  dimension: echeck_routing_number {
    type: string
    sql: ${TABLE}.echeck_routing_number ;;
  }

  dimension: echeck_type {
    type: string
    sql: ${TABLE}.echeck_type ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: last_trans_id {
    type: string
    sql: ${TABLE}.last_trans_id ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: protection_eligibility {
    type: string
    sql: ${TABLE}.protection_eligibility ;;
  }

  dimension: quote_payment_id {
    type: number
    sql: ${TABLE}.quote_payment_id ;;
  }

  dimension: shipping_amount {
    type: number
    sql: ${TABLE}.shipping_amount ;;
  }

  dimension: shipping_captured {
    type: number
    sql: ${TABLE}.shipping_captured ;;
  }

  dimension: shipping_refunded {
    type: number
    sql: ${TABLE}.shipping_refunded ;;
  }

  measure: count {
    type: count
    drill_fields: [echeck_bank_name, echeck_account_name]
  }
}
