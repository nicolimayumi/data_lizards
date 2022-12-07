# The name of this view in Looker is "Tax Calculation"
view: tax_calculation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.tax_calculation ;;
  drill_fields: [tax_calculation_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: tax_calculation_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tax_calculation_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer Tax Class ID" in Explore.

  dimension: customer_tax_class_id {
    type: number
    sql: ${TABLE}.customer_tax_class_id ;;
  }

  dimension: product_tax_class_id {
    type: number
    sql: ${TABLE}.product_tax_class_id ;;
  }

  dimension: tax_calculation_rate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_calculation_rate_id ;;
  }

  dimension: tax_calculation_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_calculation_rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_calculation_id, tax_calculation_rate.tax_calculation_rate_id, tax_calculation_rule.tax_calculation_rule_id]
  }
}
