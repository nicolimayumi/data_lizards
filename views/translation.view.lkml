# The name of this view in Looker is "Translation"
view: translation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.translation ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Crc String" in Explore.

  dimension: crc_string {
    type: number
    sql: ${TABLE}.crc_string ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_crc_string {
    type: sum
    sql: ${crc_string} ;;
  }

  measure: average_crc_string {
    type: average
    sql: ${crc_string} ;;
  }

  dimension: key_id {
    type: number
    sql: ${TABLE}.key_id ;;
  }

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: string {
    type: string
    sql: ${TABLE}.string ;;
  }

  dimension: translate {
    type: string
    sql: ${TABLE}.translate ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name]
  }
}
