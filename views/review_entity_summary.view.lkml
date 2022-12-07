# The name of this view in Looker is "Review Entity Summary"
view: review_entity_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.review_entity_summary ;;
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

  dimension: entity_type {
    type: number
    sql: ${TABLE}.entity_type ;;
  }

  dimension: primary_id {
    type: number
    sql: ${TABLE}.primary_id ;;
  }

  dimension: rating_summary {
    type: number
    sql: ${TABLE}.rating_summary ;;
  }

  dimension: reviews_count {
    type: number
    sql: ${TABLE}.reviews_count ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name]
  }
}
