# The name of this view in Looker is "Directory Currency Rate"
view: directory_currency_rate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.directory_currency_rate ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Currency From" in Explore.

  dimension: currency_from {
    type: string
    sql: ${TABLE}.currency_from ;;
  }

  dimension: currency_to {
    type: string
    sql: ${TABLE}.currency_to ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
