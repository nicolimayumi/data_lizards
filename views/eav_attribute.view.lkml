# The name of this view in Looker is "Eav Attribute"
view: eav_attribute {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.eav_attribute ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Attribute Code" in Explore.

  dimension: attribute_code {
    type: string
    sql: ${TABLE}.attribute_code ;;
  }

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: attribute_model {
    type: string
    sql: ${TABLE}.attribute_model ;;
  }

  dimension: backend_model {
    type: string
    sql: ${TABLE}.backend_model ;;
  }

  dimension: backend_table {
    type: string
    sql: ${TABLE}.backend_table ;;
  }

  dimension: backend_type {
    type: string
    sql: ${TABLE}.backend_type ;;
  }

  dimension: default_value {
    type: string
    sql: ${TABLE}.default_value ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: frontend_class {
    type: string
    sql: ${TABLE}.frontend_class ;;
  }

  dimension: frontend_input {
    type: string
    sql: ${TABLE}.frontend_input ;;
  }

  dimension: frontend_label {
    type: string
    sql: ${TABLE}.frontend_label ;;
  }

  dimension: frontend_model {
    type: string
    sql: ${TABLE}.frontend_model ;;
  }

  dimension: is_required {
    type: number
    sql: ${TABLE}.is_required ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_required {
    type: sum
    sql: ${is_required} ;;
  }

  measure: average_is_required {
    type: average
    sql: ${is_required} ;;
  }

  dimension: is_unique {
    type: number
    sql: ${TABLE}.is_unique ;;
  }

  dimension: is_user_defined {
    type: number
    sql: ${TABLE}.is_user_defined ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: source_model {
    type: string
    sql: ${TABLE}.source_model ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
