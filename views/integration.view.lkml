# The name of this view in Looker is "Integration"
view: integration {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.integration ;;
  drill_fields: [integration_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: integration_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.integration_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Consumer ID" in Explore.

  dimension: consumer_id {
    type: number
    sql: ${TABLE}.consumer_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: endpoint {
    type: string
    sql: ${TABLE}.endpoint ;;
  }

  dimension: identity_link_url {
    type: string
    sql: ${TABLE}.identity_link_url ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: setup_type {
    type: number
    sql: ${TABLE}.setup_type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_setup_type {
    type: sum
    sql: ${setup_type} ;;
  }

  measure: average_setup_type {
    type: average
    sql: ${setup_type} ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [integration_id, name]
  }
}
