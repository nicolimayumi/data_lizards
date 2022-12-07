# The name of this view in Looker is "Catalog Product Link Attribute"
view: catalog_product_link_attribute {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_product_link_attribute ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Data Type" in Explore.

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: link_type_id {
    type: number
    sql: ${TABLE}.link_type_id ;;
  }

  dimension: product_link_attribute_code {
    type: string
    sql: ${TABLE}.product_link_attribute_code ;;
  }

  dimension: product_link_attribute_id {
    type: number
    sql: ${TABLE}.product_link_attribute_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
