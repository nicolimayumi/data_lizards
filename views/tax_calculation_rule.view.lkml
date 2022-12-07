# The name of this view in Looker is "Tax Calculation Rule"
view: tax_calculation_rule {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.tax_calculation_rule ;;
  drill_fields: [tax_calculation_rule_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: tax_calculation_rule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tax_calculation_rule_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Calculate Subtotal" in Explore.

  dimension: calculate_subtotal {
    type: number
    sql: ${TABLE}.calculate_subtotal ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_calculate_subtotal {
    type: sum
    sql: ${calculate_subtotal} ;;
  }

  measure: average_calculate_subtotal {
    type: average
    sql: ${calculate_subtotal} ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_calculation_rule_id, tax_calculation.count]
  }
}
