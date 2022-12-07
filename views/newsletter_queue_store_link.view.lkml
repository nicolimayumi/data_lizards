# The name of this view in Looker is "Newsletter Queue Store Link"
view: newsletter_queue_store_link {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.newsletter_queue_store_link ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Queue ID" in Explore.

  dimension: queue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.queue_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [queue.name, queue.id, store.store_id, store.name]
  }
}
