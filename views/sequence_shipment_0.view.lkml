# The name of this view in Looker is "Sequence Shipment 0"
view: sequence_shipment_0 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.sequence_shipment_0 ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Sequence Value" in Explore.

  dimension: sequence_value {
    type: number
    sql: ${TABLE}.sequence_value ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sequence_value {
    type: sum
    sql: ${sequence_value} ;;
  }

  measure: average_sequence_value {
    type: average
    sql: ${sequence_value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
