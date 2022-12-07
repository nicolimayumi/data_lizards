# The name of this view in Looker is "Inventory Pickup Location Quote Address"
view: inventory_pickup_location_quote_address {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.inventory_pickup_location_quote_address ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address ID" in Explore.

  dimension: address_id {
    type: number
    sql: ${TABLE}.address_id ;;
  }

  dimension: pickup_location_code {
    type: string
    sql: ${TABLE}.pickup_location_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
