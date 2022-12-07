# The name of this view in Looker is "Widget"
view: widget {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.widget ;;
  drill_fields: [widget_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: widget_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.widget_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Parameters" in Explore.

  dimension: parameters {
    type: string
    sql: ${TABLE}.parameters ;;
  }

  dimension: widget_code {
    type: string
    sql: ${TABLE}.widget_code ;;
  }

  dimension: widget_type {
    type: string
    sql: ${TABLE}.widget_type ;;
  }

  measure: count {
    type: count
    drill_fields: [widget_id]
  }
}
