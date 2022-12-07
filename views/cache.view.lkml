# The name of this view in Looker is "Cache"
view: cache {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.cache ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Create Time" in Explore.

  dimension: create_time {
    type: number
    sql: ${TABLE}.create_time ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_create_time {
    type: sum
    sql: ${create_time} ;;
  }

  measure: average_create_time {
    type: average
    sql: ${create_time} ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: expire_time {
    type: number
    sql: ${TABLE}.expire_time ;;
  }

  dimension: update_time {
    type: number
    sql: ${TABLE}.update_time ;;
  }

  measure: count {
    type: count
    drill_fields: [id, cache_tag.count]
  }
}
