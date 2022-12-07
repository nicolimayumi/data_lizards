# The name of this view in Looker is "Eav Attribute Group"
view: eav_attribute_group {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.eav_attribute_group ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Attribute Group Code" in Explore.

  dimension: attribute_group_code {
    type: string
    sql: ${TABLE}.attribute_group_code ;;
  }

  dimension: attribute_group_id {
    type: number
    sql: ${TABLE}.attribute_group_id ;;
  }

  dimension: attribute_group_name {
    type: string
    sql: ${TABLE}.attribute_group_name ;;
  }

  dimension: attribute_set_id {
    type: number
    sql: ${TABLE}.attribute_set_id ;;
  }

  dimension: default_id {
    type: number
    sql: ${TABLE}.default_id ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_sort_order {
    type: sum
    sql: ${sort_order} ;;
  }

  measure: average_sort_order {
    type: average
    sql: ${sort_order} ;;
  }

  dimension: tab_group_code {
    type: string
    sql: ${TABLE}.tab_group_code ;;
  }

  measure: count {
    type: count
    drill_fields: [attribute_group_name]
  }
}
