# The name of this view in Looker is "Catalog URL Rewrite Product Category"
view: catalog_url_rewrite_product_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_url_rewrite_product_category ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: url_rewrite_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.url_rewrite_id ;;
  }

  measure: count {
    type: count
    drill_fields: [url_rewrite.url_rewrite_id]
  }
}
