# The name of this view in Looker is "Theme"
view: theme {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.theme ;;
  drill_fields: [theme_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: theme_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.theme_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Area" in Explore.

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: is_featured {
    type: yesno
    sql: ${TABLE}.is_featured ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: preview_image {
    type: string
    sql: ${TABLE}.preview_image ;;
  }

  dimension: theme_path {
    type: string
    sql: ${TABLE}.theme_path ;;
  }

  dimension: theme_title {
    type: string
    sql: ${TABLE}.theme_title ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_type {
    type: sum
    sql: ${type} ;;
  }

  measure: average_type {
    type: average
    sql: ${type} ;;
  }

  measure: count {
    type: count
    drill_fields: [theme_id, layout_link.count, theme_file.count, widget_instance.count]
  }
}
