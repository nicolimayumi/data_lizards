# The name of this view in Looker is "Catalog Product Option Title"
view: catalog_product_option_title {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_product_option_title ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Option ID" in Explore.

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: option_title_id {
    type: number
    sql: ${TABLE}.option_title_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name]
  }
}
