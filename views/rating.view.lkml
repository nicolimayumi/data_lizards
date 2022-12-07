# The name of this view in Looker is "Rating"
view: rating {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.rating ;;
  drill_fields: [rating_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: rating_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.rating_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Entity ID" in Explore.

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_active {
    type: sum
    sql: ${is_active} ;;
  }

  measure: average_is_active {
    type: average
    sql: ${is_active} ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: rating_code {
    type: string
    sql: ${TABLE}.rating_code ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rating_id,
      rating_option.count,
      rating_option_vote.count,
      rating_option_vote_aggregated.count,
      rating_store.count,
      rating_title.count
    ]
  }
}
