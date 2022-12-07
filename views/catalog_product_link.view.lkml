# The name of this view in Looker is "Catalog Product Link"
view: catalog_product_link {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_product_link ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Link ID" in Explore.

  dimension: link_id {
    type: number
    sql: ${TABLE}.link_id ;;
  }

  dimension: link_type_id {
    type: number
    sql: ${TABLE}.link_type_id ;;
  }

  dimension: linked_product_id {
    type: number
    sql: ${TABLE}.linked_product_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
