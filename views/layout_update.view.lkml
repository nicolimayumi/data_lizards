# The name of this view in Looker is "Layout Update"
view: layout_update {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.layout_update ;;
  drill_fields: [layout_update_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: layout_update_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.layout_update_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Handle" in Explore.

  dimension: handle {
    type: string
    sql: ${TABLE}.handle ;;
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

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: xml {
    type: string
    sql: ${TABLE}.xml ;;
  }

  measure: count {
    type: count
    drill_fields: [layout_update_id, layout_link.count, widget_instance_page_layout.count]
  }
}
