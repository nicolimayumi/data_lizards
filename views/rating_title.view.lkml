# The name of this view in Looker is "Rating Title"
view: rating_title {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.rating_title ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Rating ID" in Explore.

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

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [rating.rating_id, store.store_id, store.name]
  }
}
