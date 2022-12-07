# The name of this view in Looker is "Customer Form Attribute"
view: customer_form_attribute {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.customer_form_attribute ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Attribute ID" in Explore.

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: form_code {
    type: string
    sql: ${TABLE}.form_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
