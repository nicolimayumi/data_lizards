# The name of this view in Looker is "Customer Group"
view: customer_group {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.customer_group ;;
  drill_fields: [customer_group_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: customer_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_group_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer Group Code" in Explore.

  dimension: customer_group_code {
    type: string
    sql: ${TABLE}.customer_group_code ;;
  }

  dimension: tax_class_id {
    type: number
    sql: ${TABLE}.tax_class_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer_group_id,
      catalogrule_customer_group.count,
      catalogrule_group_website.count,
      catalogrule_group_website_replica.count,
      catalogrule_product.count,
      catalogrule_product_price.count,
      catalogrule_product_price_replica.count,
      catalogrule_product_replica.count,
      catalog_product_bundle_price_index.count,
      catalog_product_entity_tier_price.count,
      catalog_product_index_price.count,
      catalog_product_index_price_bundle_idx.count,
      catalog_product_index_price_bundle_opt_idx.count,
      catalog_product_index_price_bundle_opt_tmp.count,
      catalog_product_index_price_bundle_sel_idx.count,
      catalog_product_index_price_bundle_sel_tmp.count,
      catalog_product_index_price_bundle_tmp.count,
      catalog_product_index_price_cfg_opt_agr_idx.count,
      catalog_product_index_price_cfg_opt_agr_tmp.count,
      catalog_product_index_price_cfg_opt_idx.count,
      catalog_product_index_price_cfg_opt_tmp.count,
      catalog_product_index_price_downlod_idx.count,
      catalog_product_index_price_downlod_tmp.count,
      catalog_product_index_price_final_idx.count,
      catalog_product_index_price_final_tmp.count,
      catalog_product_index_price_idx.count,
      catalog_product_index_price_opt_agr_idx.count,
      catalog_product_index_price_opt_agr_tmp.count,
      catalog_product_index_price_opt_idx.count,
      catalog_product_index_price_opt_tmp.count,
      catalog_product_index_price_replica.count,
      catalog_product_index_price_tmp.count,
      catalog_product_index_tier_price.count,
      customer_group_excluded_website.count,
      quote.count,
      salesrule_customer_group.count,
      salesrule_product_attribute.count,
      sales_creditmemo_grid.count,
      sales_invoice_grid.count,
      sales_order.count,
      sales_shipment_grid.count
    ]
  }
}
