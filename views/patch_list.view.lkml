# The name of this view in Looker is "Patch List"
view: patch_list {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.patch_list ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Patch ID" in Explore.

  dimension: patch_id {
    type: number
    sql: ${TABLE}.patch_id ;;
  }

  dimension: patch_name {
    type: string
    sql: ${TABLE}.patch_name ;;
  }

  measure: count {
    type: count
    drill_fields: [patch_name]
  }
}
