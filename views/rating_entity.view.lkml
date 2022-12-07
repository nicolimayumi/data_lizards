# The name of this view in Looker is "Rating Entity"
view: rating_entity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.rating_entity ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Entity Code" in Explore.

  dimension: entity_code {
    type: string
    sql: ${TABLE}.entity_code ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
