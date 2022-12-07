# The name of this view in Looker is "Rating Option Vote Aggregated"
view: rating_option_vote_aggregated {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.rating_option_vote_aggregated ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Entity Pk Value" in Explore.

  dimension: entity_pk_value {
    type: number
    sql: ${TABLE}.entity_pk_value ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_entity_pk_value {
    type: sum
    sql: ${entity_pk_value} ;;
  }

  measure: average_entity_pk_value {
    type: average
    sql: ${entity_pk_value} ;;
  }

  dimension: percent {
    type: number
    sql: ${TABLE}.percent ;;
  }

  dimension: percent_approved {
    type: number
    sql: ${TABLE}.percent_approved ;;
  }

  dimension: primary_id {
    type: number
    sql: ${TABLE}.primary_id ;;
  }

  dimension: rating_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rating_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: vote_count {
    type: number
    sql: ${TABLE}.vote_count ;;
  }

  dimension: vote_value_sum {
    type: number
    sql: ${TABLE}.vote_value_sum ;;
  }

  measure: count {
    type: count
    drill_fields: [rating.rating_id, store.store_id, store.name]
  }
}
