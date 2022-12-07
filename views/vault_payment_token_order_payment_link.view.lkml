# The name of this view in Looker is "Vault Payment Token Order Payment Link"
view: vault_payment_token_order_payment_link {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.vault_payment_token_order_payment_link ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Order Payment ID" in Explore.

  dimension: order_payment_id {
    type: number
    sql: ${TABLE}.order_payment_id ;;
  }

  dimension: payment_token_id {
    type: number
    sql: ${TABLE}.payment_token_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
