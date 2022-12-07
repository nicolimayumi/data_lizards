# The name of this view in Looker is "Customer Grid Flat"
view: customer_grid_flat {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.customer_grid_flat ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Billing City" in Explore.

  dimension: billing_city {
    type: string
    sql: ${TABLE}.billing_city ;;
  }

  dimension: billing_company {
    type: string
    sql: ${TABLE}.billing_company ;;
  }

  dimension: billing_country_id {
    type: string
    sql: ${TABLE}.billing_country_id ;;
  }

  dimension: billing_fax {
    type: string
    sql: ${TABLE}.billing_fax ;;
  }

  dimension: billing_firstname {
    type: string
    sql: ${TABLE}.billing_firstname ;;
  }

  dimension: billing_full {
    type: string
    sql: ${TABLE}.billing_full ;;
  }

  dimension: billing_lastname {
    type: string
    sql: ${TABLE}.billing_lastname ;;
  }

  dimension: billing_postcode {
    type: string
    sql: ${TABLE}.billing_postcode ;;
  }

  dimension: billing_region {
    type: string
    sql: ${TABLE}.billing_region ;;
  }

  dimension: billing_region_id {
    type: number
    sql: ${TABLE}.billing_region_id ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}.billing_street ;;
  }

  dimension: billing_telephone {
    type: string
    sql: ${TABLE}.billing_telephone ;;
  }

  dimension: billing_vat_id {
    type: string
    sql: ${TABLE}.billing_vat_id ;;
  }

  dimension: confirmation {
    type: string
    sql: ${TABLE}.confirmation ;;
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

  dimension: created_in {
    type: string
    sql: ${TABLE}.created_in ;;
  }

  dimension_group: dob {
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
    sql: ${TABLE}.dob ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: gender {
    type: number
    sql: ${TABLE}.gender ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_gender {
    type: sum
    sql: ${gender} ;;
  }

  measure: average_gender {
    type: average
    sql: ${gender} ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension_group: lock_expires {
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
    sql: ${TABLE}.lock_expires ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: shipping_full {
    type: string
    sql: ${TABLE}.shipping_full ;;
  }

  dimension: taxvat {
    type: string
    sql: ${TABLE}.taxvat ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [billing_lastname, name, billing_firstname]
  }
}
