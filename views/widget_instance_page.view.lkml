# The name of this view in Looker is "Widget Instance Page"
view: widget_instance_page {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.widget_instance_page ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Block Reference" in Explore.

  dimension: block_reference {
    type: string
    sql: ${TABLE}.block_reference ;;
  }

  dimension: entities {
    type: string
    sql: ${TABLE}.entities ;;
  }

  dimension: instance_id {
    type: number
    sql: ${TABLE}.instance_id ;;
  }

  dimension: layout_handle {
    type: string
    sql: ${TABLE}.layout_handle ;;
  }

  dimension: page_for {
    type: string
    sql: ${TABLE}.page_for ;;
  }

  dimension: page_group {
    type: string
    sql: ${TABLE}.page_group ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.page_id ;;
  }

  dimension: page_template {
    type: string
    sql: ${TABLE}.page_template ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
