# The name of this view in Looker is "Session"
view: session {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.session ;;
  drill_fields: [session_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: session_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.session_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Session Data" in Explore.

  dimension: session_data {
    type: string
    sql: ${TABLE}.session_data ;;
  }

  dimension: session_expires {
    type: number
    sql: ${TABLE}.session_expires ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_session_expires {
    type: sum
    sql: ${session_expires} ;;
  }

  measure: average_session_expires {
    type: average
    sql: ${session_expires} ;;
  }

  measure: count {
    type: count
    drill_fields: [session_id, admin_user_session.count, customer_visitor.count]
  }
}
