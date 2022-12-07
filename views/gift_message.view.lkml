# The name of this view in Looker is "Gift Message"
view: gift_message {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.gift_message ;;
  drill_fields: [gift_message_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: gift_message_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.gift_message_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer ID" in Explore.

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}.recipient ;;
  }

  dimension: sender {
    type: string
    sql: ${TABLE}.sender ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      gift_message_id,
      quote.count,
      quote_address.count,
      quote_address_item.count,
      quote_item.count,
      sales_order.count,
      sales_order_item.count
    ]
  }
}
