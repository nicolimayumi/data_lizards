# The name of this view in Looker is "Sitemap"
view: sitemap {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.sitemap ;;
  drill_fields: [sitemap_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: sitemap_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.sitemap_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Sitemap Filename" in Explore.

  dimension: sitemap_filename {
    type: string
    sql: ${TABLE}.sitemap_filename ;;
  }

  dimension: sitemap_path {
    type: string
    sql: ${TABLE}.sitemap_path ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: sitemap {
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
    sql: ${TABLE}.sitemap_time ;;
  }

  dimension: sitemap_type {
    type: string
    sql: ${TABLE}.sitemap_type ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sitemap_id, sitemap_filename, store.store_id, store.name]
  }
}
