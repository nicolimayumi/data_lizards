# The name of this view in Looker is "Magento Operation"
view: magento_operation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.magento_operation ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bulk Uuid" in Explore.

  dimension: bulk_uuid {
    type: string
    sql: ${TABLE}.bulk_uuid ;;
  }

  dimension: error_code {
    type: number
    sql: ${TABLE}.error_code ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_error_code {
    type: sum
    sql: ${error_code} ;;
  }

  measure: average_error_code {
    type: average
    sql: ${error_code} ;;
  }

  dimension: operation_key {
    type: number
    sql: ${TABLE}.operation_key ;;
  }

  dimension: result_message {
    type: string
    sql: ${TABLE}.result_message ;;
  }

  dimension: result_serialized_data {
    type: string
    sql: ${TABLE}.result_serialized_data ;;
  }

  dimension: serialized_data {
    type: string
    sql: ${TABLE}.serialized_data ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: started {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.started_at ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: topic_name {
    type: string
    sql: ${TABLE}.topic_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, topic_name]
  }
}
