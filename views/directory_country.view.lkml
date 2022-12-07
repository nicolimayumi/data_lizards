# The name of this view in Looker is "Directory Country"
view: directory_country {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.directory_country ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country ID" in Explore.

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: iso2_code {
    type: string
    sql: ${TABLE}.iso2_code ;;
  }

  dimension: iso3_code {
    type: string
    sql: ${TABLE}.iso3_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
