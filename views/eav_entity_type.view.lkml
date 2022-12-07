# The name of this view in Looker is "Eav Entity Type"
view: eav_entity_type {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.eav_entity_type ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Additional Attribute Table" in Explore.

  dimension: additional_attribute_table {
    type: string
    sql: ${TABLE}.additional_attribute_table ;;
  }

  dimension: attribute_model {
    type: string
    sql: ${TABLE}.attribute_model ;;
  }

  dimension: data_sharing_key {
    type: string
    sql: ${TABLE}.data_sharing_key ;;
  }

  dimension: default_attribute_set_id {
    type: number
    sql: ${TABLE}.default_attribute_set_id ;;
  }

  dimension: entity_attribute_collection {
    type: string
    sql: ${TABLE}.entity_attribute_collection ;;
  }

  dimension: entity_id_field {
    type: string
    sql: ${TABLE}.entity_id_field ;;
  }

  dimension: entity_model {
    type: string
    sql: ${TABLE}.entity_model ;;
  }

  dimension: entity_table {
    type: string
    sql: ${TABLE}.entity_table ;;
  }

  dimension: entity_type_code {
    type: string
    sql: ${TABLE}.entity_type_code ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: increment_model {
    type: string
    sql: ${TABLE}.increment_model ;;
  }

  dimension: increment_pad_char {
    type: string
    sql: ${TABLE}.increment_pad_char ;;
  }

  dimension: increment_pad_length {
    type: number
    sql: ${TABLE}.increment_pad_length ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_increment_pad_length {
    type: sum
    sql: ${increment_pad_length} ;;
  }

  measure: average_increment_pad_length {
    type: average
    sql: ${increment_pad_length} ;;
  }

  dimension: increment_per_store {
    type: number
    sql: ${TABLE}.increment_per_store ;;
  }

  dimension: is_data_sharing {
    type: number
    sql: ${TABLE}.is_data_sharing ;;
  }

  dimension: value_table_prefix {
    type: string
    sql: ${TABLE}.value_table_prefix ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
