# The name of this view in Looker is "Theme File"
view: theme_file {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.theme_file ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Content" in Explore.

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: file_path {
    type: string
    sql: ${TABLE}.file_path ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.file_type ;;
  }

  dimension: is_temporary {
    type: yesno
    sql: ${TABLE}.is_temporary ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sort_order {
    type: sum
    sql: ${sort_order} ;;
  }

  measure: average_sort_order {
    type: average
    sql: ${sort_order} ;;
  }

  dimension: theme_files_id {
    type: number
    sql: ${TABLE}.theme_files_id ;;
  }

  dimension: theme_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.theme_id ;;
  }

  measure: count {
    type: count
    drill_fields: [theme.theme_id]
  }
}
