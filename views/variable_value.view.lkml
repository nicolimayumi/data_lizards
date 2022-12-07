# The name of this view in Looker is "Variable Value"
view: variable_value {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.variable_value ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "HTML Value" in Explore.

  dimension: html_value {
    type: string
    sql: ${TABLE}.html_value ;;
  }

  dimension: plain_value {
    type: string
    sql: ${TABLE}.plain_value ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
  }

  dimension: variable_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.variable_id ;;
  }

  measure: count {
    type: count
    drill_fields: [variable.name, variable.variable_id, store.store_id, store.name]
  }
}
