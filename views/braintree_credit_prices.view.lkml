# The name of this view in Looker is "Braintree Credit Prices"
view: braintree_credit_prices {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.braintree_credit_prices ;;
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
  # This dimension will be called "Cost of Purchase" in Explore.

  dimension: cost_of_purchase {
    type: number
    sql: ${TABLE}.cost_of_purchase ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cost_of_purchase {
    type: sum
    sql: ${cost_of_purchase} ;;
  }

  measure: average_cost_of_purchase {
    type: average
    sql: ${cost_of_purchase} ;;
  }

  dimension: instalment_rate {
    type: number
    sql: ${TABLE}.instalment_rate ;;
  }

  dimension: monthly_payment {
    type: number
    sql: ${TABLE}.monthly_payment ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: term {
    type: number
    sql: ${TABLE}.term ;;
  }

  dimension: total_inc_interest {
    type: number
    sql: ${TABLE}.total_inc_interest ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
