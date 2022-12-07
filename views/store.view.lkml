# The name of this view in Looker is "Store"
view: store {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.store ;;
  drill_fields: [store_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: store_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.store_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_active {
    type: sum
    sql: ${is_active} ;;
  }

  measure: average_is_active {
    type: average
    sql: ${is_active} ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      store_id,
      name,
      catalog_category_entity_datetime.count,
      catalog_category_entity_decimal.count,
      catalog_category_entity_int.count,
      catalog_category_entity_text.count,
      catalog_category_entity_varchar.count,
      catalog_category_product_index.count,
      catalog_category_product_index_replica.count,
      catalog_category_product_index_store1.count,
      catalog_category_product_index_store1_replica.count,
      catalog_category_product_index_store2.count,
      catalog_category_product_index_store2_replica.count,
      catalog_category_product_index_store3.count,
      catalog_category_product_index_store3_replica.count,
      catalog_category_product_index_tmp.count,
      catalog_compare_item.count,
      catalog_product_bundle_option_value.count,
      catalog_product_entity_datetime.count,
      catalog_product_entity_decimal.count,
      catalog_product_entity_gallery.count,
      catalog_product_entity_int.count,
      catalog_product_entity_media_gallery_value.count,
      catalog_product_entity_media_gallery_value_video.count,
      catalog_product_entity_text.count,
      catalog_product_entity_varchar.count,
      catalog_product_index_eav.count,
      catalog_product_index_eav_decimal.count,
      catalog_product_index_eav_decimal_idx.count,
      catalog_product_index_eav_decimal_replica.count,
      catalog_product_index_eav_decimal_tmp.count,
      catalog_product_index_eav_idx.count,
      catalog_product_index_eav_replica.count,
      catalog_product_index_eav_tmp.count,
      catalog_product_option_price.count,
      catalog_product_option_title.count,
      catalog_product_option_type_price.count,
      catalog_product_option_type_title.count,
      catalog_product_super_attribute_label.count,
      checkout_agreement_store.count,
      cms_block_store.count,
      cms_page_store.count,
      customer_entity.count,
      design_change.count,
      design_config_grid_flat.count,
      downloadable_link_title.count,
      downloadable_sample_title.count,
      eav_attribute_label.count,
      eav_attribute_option_swatch.count,
      eav_attribute_option_value.count,
      eav_entity.count,
      eav_entity_datetime.count,
      eav_entity_decimal.count,
      eav_entity_int.count,
      eav_entity_store.count,
      eav_entity_text.count,
      eav_entity_varchar.count,
      eav_form_fieldset_label.count,
      eav_form_type.count,
      googleoptimizer_code.count,
      layout_link.count,
      newsletter_queue_store_link.count,
      newsletter_subscriber.count,
      paypal_billing_agreement.count,
      paypal_settlement_report_row.count,
      product_alert_price.count,
      product_alert_stock.count,
      quote.count,
      quote_address_item.count,
      quote_item.count,
      rating_option_vote_aggregated.count,
      rating_store.count,
      rating_title.count,
      report_compared_product_index.count,
      report_event.count,
      report_viewed_product_aggregated_daily.count,
      report_viewed_product_aggregated_monthly.count,
      report_viewed_product_aggregated_yearly.count,
      report_viewed_product_index.count,
      review_detail.count,
      review_entity_summary.count,
      review_store.count,
      salesrule_coupon_aggregated.count,
      salesrule_coupon_aggregated_order.count,
      salesrule_coupon_aggregated_updated.count,
      salesrule_label.count,
      sales_bestsellers_aggregated_daily.count,
      sales_bestsellers_aggregated_monthly.count,
      sales_bestsellers_aggregated_yearly.count,
      sales_creditmemo.count,
      sales_creditmemo_grid.count,
      sales_invoice.count,
      sales_invoiced_aggregated.count,
      sales_invoiced_aggregated_order.count,
      sales_invoice_grid.count,
      sales_order.count,
      sales_order_aggregated_created.count,
      sales_order_aggregated_updated.count,
      sales_order_grid.count,
      sales_order_item.count,
      sales_order_status_label.count,
      sales_refunded_aggregated.count,
      sales_refunded_aggregated_order.count,
      sales_sequence_meta.count,
      sales_shipment.count,
      sales_shipment_grid.count,
      sales_shipping_aggregated.count,
      sales_shipping_aggregated_order.count,
      search_query.count,
      search_synonyms.count,
      sitemap.count,
      tax_calculation_rate_title.count,
      tax_order_aggregated_created.count,
      tax_order_aggregated_updated.count,
      translation.count,
      url_rewrite.count,
      variable_value.count,
      wishlist_item.count
    ]
  }
}
