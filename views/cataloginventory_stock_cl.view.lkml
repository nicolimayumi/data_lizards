# The name of this view in Looker is "Cataloginventory Stock Cl"
view: cataloginventory_stock_cl {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.cataloginventory_stock_cl ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Entity ID" in Explore.

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: version_id {
    type: number
    sql: ${TABLE}.version_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
