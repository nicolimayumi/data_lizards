# The name of this view in Looker is "Catalog Eav Attribute"
view: catalog_eav_attribute {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.catalog_eav_attribute ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Additional Data" in Explore.

  dimension: additional_data {
    type: string
    sql: ${TABLE}.additional_data ;;
  }

  dimension: apply_to {
    type: string
    sql: ${TABLE}.apply_to ;;
  }

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: frontend_input_renderer {
    type: string
    sql: ${TABLE}.frontend_input_renderer ;;
  }

  dimension: is_comparable {
    type: number
    sql: ${TABLE}.is_comparable ;;
  }

  dimension: is_filterable {
    type: number
    sql: ${TABLE}.is_filterable ;;
  }

  dimension: is_filterable_in_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_filterable_in_grid ;;
  }

  dimension: is_filterable_in_search {
    type: number
    sql: ${TABLE}.is_filterable_in_search ;;
  }

  dimension: is_global {
    type: number
    sql: ${TABLE}.is_global ;;
  }

  dimension: is_html_allowed_on_front {
    type: number
    sql: ${TABLE}.is_html_allowed_on_front ;;
  }

  dimension: is_pagebuilder_enabled {
    type: yesno
    sql: ${TABLE}.is_pagebuilder_enabled ;;
  }

  dimension: is_required_in_admin_store {
    type: number
    sql: ${TABLE}.is_required_in_admin_store ;;
  }

  dimension: is_searchable {
    type: number
    sql: ${TABLE}.is_searchable ;;
  }

  dimension: is_used_for_price_rules {
    type: number
    sql: ${TABLE}.is_used_for_price_rules ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_used_for_price_rules {
    type: sum
    sql: ${is_used_for_price_rules} ;;
  }

  measure: average_is_used_for_price_rules {
    type: average
    sql: ${is_used_for_price_rules} ;;
  }

  dimension: is_used_for_promo_rules {
    type: number
    sql: ${TABLE}.is_used_for_promo_rules ;;
  }

  dimension: is_used_in_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_used_in_grid ;;
  }

  dimension: is_visible {
    type: number
    sql: ${TABLE}.is_visible ;;
  }

  dimension: is_visible_in_advanced_search {
    type: number
    sql: ${TABLE}.is_visible_in_advanced_search ;;
  }

  dimension: is_visible_in_grid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_visible_in_grid ;;
  }

  dimension: is_visible_on_front {
    type: number
    sql: ${TABLE}.is_visible_on_front ;;
  }

  dimension: is_wysiwyg_enabled {
    type: number
    sql: ${TABLE}.is_wysiwyg_enabled ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: search_weight {
    type: number
    sql: ${TABLE}.search_weight ;;
  }

  dimension: used_for_sort_by {
    type: number
    sql: ${TABLE}.used_for_sort_by ;;
  }

  dimension: used_in_product_listing {
    type: number
    sql: ${TABLE}.used_in_product_listing ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
