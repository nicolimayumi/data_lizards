# The name of this view in Looker is "Eav Entity Store"
view: eav_entity_store {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.eav_entity_store ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Entity Store ID" in Explore.

  dimension: entity_store_id {
    type: number
    sql: ${TABLE}.entity_store_id ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: increment_last_id {
    type: string
    sql: ${TABLE}.increment_last_id ;;
  }

  dimension: increment_prefix {
    type: string
    sql: ${TABLE}.increment_prefix ;;
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
