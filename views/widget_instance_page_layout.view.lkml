# The name of this view in Looker is "Widget Instance Page Layout"
view: widget_instance_page_layout {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.widget_instance_page_layout ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Layout Update ID" in Explore.

  dimension: layout_update_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.layout_update_id ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.page_id ;;
  }

  measure: count {
    type: count
    drill_fields: [layout_update.layout_update_id]
  }
}
