# The name of this view in Looker is "Catalog Product Index Price Bundle Opt Tmp"
view: catalog_product_index_price_bundle_opt_tmp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_product_index_price_bundle_opt_tmp ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Alt Price" in Explore.

  dimension: alt_price {
    type: number
    sql: ${TABLE}.alt_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_alt_price {
    type: sum
    sql: ${alt_price} ;;
  }

  measure: average_alt_price {
    type: average
    sql: ${alt_price} ;;
  }

  dimension: alt_tier_price {
    type: number
    sql: ${TABLE}.alt_tier_price ;;
  }

  dimension: customer_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: max_price {
    type: number
    sql: ${TABLE}.max_price ;;
  }

  dimension: min_price {
    type: number
    sql: ${TABLE}.min_price ;;
  }

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: tier_price {
    type: number
    sql: ${TABLE}.tier_price ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_group.customer_group_id]
  }
}
