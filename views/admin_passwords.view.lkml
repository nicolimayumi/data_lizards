# The name of this view in Looker is "Admin Passwords"
view: admin_passwords {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.admin_passwords ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Expires" in Explore.

  dimension: expires {
    type: number
    sql: ${TABLE}.expires ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_expires {
    type: sum
    sql: ${expires} ;;
  }

  measure: average_expires {
    type: average
    sql: ${expires} ;;
  }

  dimension: last_updated {
    type: number
    sql: ${TABLE}.last_updated ;;
  }

  dimension: password_hash {
    type: string
    sql: ${TABLE}.password_hash ;;
  }

  dimension: password_id {
    type: number
    sql: ${TABLE}.password_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
