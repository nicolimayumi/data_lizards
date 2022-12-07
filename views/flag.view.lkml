# The name of this view in Looker is "Flag"
view: flag {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.flag ;;
  drill_fields: [flag_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: flag_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.flag_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Flag Code" in Explore.

  dimension: flag_code {
    type: string
    sql: ${TABLE}.flag_code ;;
  }

  dimension: flag_data {
    type: string
    sql: ${TABLE}.flag_data ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}.state ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_state {
    type: sum
    sql: ${state} ;;
  }

  measure: average_state {
    type: average
    sql: ${state} ;;
  }

  measure: count {
    type: count
    drill_fields: [flag_id]
  }
}
