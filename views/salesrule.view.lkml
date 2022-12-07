# The name of this view in Looker is "Salesrule"
view: salesrule {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.salesrule ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actions Serialized" in Explore.

  dimension: actions_serialized {
    type: string
    sql: ${TABLE}.actions_serialized ;;
  }

  dimension: apply_to_shipping {
    type: number
    sql: ${TABLE}.apply_to_shipping ;;
  }

  dimension: conditions_serialized {
    type: string
    sql: ${TABLE}.conditions_serialized ;;
  }

  dimension: coupon_type {
    type: number
    sql: ${TABLE}.coupon_type ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_discount_amount {
    type: sum
    sql: ${discount_amount} ;;
  }

  measure: average_discount_amount {
    type: average
    sql: ${discount_amount} ;;
  }

  dimension: discount_qty {
    type: number
    sql: ${TABLE}.discount_qty ;;
  }

  dimension: discount_step {
    type: number
    sql: ${TABLE}.discount_step ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: from {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.from_date ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_advanced {
    type: number
    sql: ${TABLE}.is_advanced ;;
  }

  dimension: is_rss {
    type: number
    sql: ${TABLE}.is_rss ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: product_ids {
    type: string
    sql: ${TABLE}.product_ids ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: simple_action {
    type: string
    sql: ${TABLE}.simple_action ;;
  }

  dimension: simple_free_shipping {
    type: number
    sql: ${TABLE}.simple_free_shipping ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: stop_rules_processing {
    type: number
    sql: ${TABLE}.stop_rules_processing ;;
  }

  dimension: times_used {
    type: number
    sql: ${TABLE}.times_used ;;
  }

  dimension_group: to {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.to_date ;;
  }

  dimension: use_auto_generation {
    type: number
    sql: ${TABLE}.use_auto_generation ;;
  }

  dimension: uses_per_coupon {
    type: number
    sql: ${TABLE}.uses_per_coupon ;;
  }

  dimension: uses_per_customer {
    type: number
    sql: ${TABLE}.uses_per_customer ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
