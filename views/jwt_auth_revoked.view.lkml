# The name of this view in Looker is "Jwt Auth Revoked"
view: jwt_auth_revoked {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.jwt_auth_revoked ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Revoke Before" in Explore.

  dimension: revoke_before {
    type: number
    sql: ${TABLE}.revoke_before ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_revoke_before {
    type: sum
    sql: ${revoke_before} ;;
  }

  measure: average_revoke_before {
    type: average
    sql: ${revoke_before} ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_type_id {
    type: number
    sql: ${TABLE}.user_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
