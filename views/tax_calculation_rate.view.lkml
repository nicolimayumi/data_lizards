# The name of this view in Looker is "Tax Calculation Rate"
view: tax_calculation_rate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.tax_calculation_rate ;;
  drill_fields: [tax_calculation_rate_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: tax_calculation_rate_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tax_calculation_rate_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_rate {
    type: sum
    sql: ${rate} ;;
  }

  measure: average_rate {
    type: average
    sql: ${rate} ;;
  }

  dimension: tax_country_id {
    type: string
    sql: ${TABLE}.tax_country_id ;;
  }

  dimension: tax_postcode {
    type: string
    sql: ${TABLE}.tax_postcode ;;
  }

  dimension: tax_region_id {
    type: number
    sql: ${TABLE}.tax_region_id ;;
  }

  dimension: zip_from {
    type: number
    sql: ${TABLE}.zip_from ;;
  }

  dimension: zip_is_range {
    type: number
    sql: ${TABLE}.zip_is_range ;;
  }

  dimension: zip_to {
    type: number
    sql: ${TABLE}.zip_to ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_calculation_rate_id, tax_calculation.count, tax_calculation_rate_title.count]
  }
}
