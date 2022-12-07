# The name of this view in Looker is "Adobe Stock Asset"
view: adobe_stock_asset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.adobe_stock_asset ;;
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
  # This dimension will be called "Category ID" in Explore.

  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }

  dimension: creation_date {
    type: string
    sql: ${TABLE}.creation_date ;;
  }

  dimension: creator_id {
    type: number
    sql: ${TABLE}.creator_id ;;
  }

  dimension: is_licensed {
    type: number
    sql: ${TABLE}.is_licensed ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_licensed {
    type: sum
    sql: ${is_licensed} ;;
  }

  measure: average_is_licensed {
    type: average
    sql: ${is_licensed} ;;
  }

  dimension: media_gallery_id {
    type: number
    sql: ${TABLE}.media_gallery_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
