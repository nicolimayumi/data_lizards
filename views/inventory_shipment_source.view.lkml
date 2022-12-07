# The name of this view in Looker is "Inventory Shipment Source"
view: inventory_shipment_source {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.inventory_shipment_source ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Shipment ID" in Explore.

  dimension: shipment_id {
    type: number
    sql: ${TABLE}.shipment_id ;;
  }

  dimension: source_code {
    type: string
    sql: ${TABLE}.source_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
