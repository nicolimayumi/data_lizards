# The name of this view in Looker is "Cms Page"
view: cms_page {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.cms_page ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Content" in Explore.

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }

  dimension: content_heading {
    type: string
    sql: ${TABLE}.content_heading ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: creation {
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
    sql: ${TABLE}.creation_time ;;
  }

  dimension: custom_layout_update_xml {
    type: string
    sql: ${TABLE}.custom_layout_update_xml ;;
  }

  dimension: custom_root_template {
    type: string
    sql: ${TABLE}.custom_root_template ;;
  }

  dimension: custom_theme {
    type: string
    sql: ${TABLE}.custom_theme ;;
  }

  dimension_group: custom_theme_from {
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
    sql: ${TABLE}.custom_theme_from ;;
  }

  dimension_group: custom_theme_to {
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
    sql: ${TABLE}.custom_theme_to ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_is_active {
    type: sum
    sql: ${is_active} ;;
  }

  measure: average_is_active {
    type: average
    sql: ${is_active} ;;
  }

  dimension: layout_update_selected {
    type: string
    sql: ${TABLE}.layout_update_selected ;;
  }

  dimension: layout_update_xml {
    type: string
    sql: ${TABLE}.layout_update_xml ;;
  }

  dimension: meta_description {
    type: string
    sql: ${TABLE}.meta_description ;;
  }

  dimension: meta_keywords {
    type: string
    sql: ${TABLE}.meta_keywords ;;
  }

  dimension: meta_title {
    type: string
    sql: ${TABLE}.meta_title ;;
  }

  dimension: page_id {
    type: number
    sql: ${TABLE}.page_id ;;
  }

  dimension: page_layout {
    type: string
    sql: ${TABLE}.page_layout ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.update_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
