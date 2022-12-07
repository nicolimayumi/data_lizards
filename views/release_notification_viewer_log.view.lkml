# The name of this view in Looker is "Release Notification Viewer Log"
view: release_notification_viewer_log {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.release_notification_viewer_log ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Last View Version" in Explore.

  dimension: last_view_version {
    type: string
    sql: ${TABLE}.last_view_version ;;
  }

  dimension: viewer_id {
    type: number
    sql: ${TABLE}.viewer_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
