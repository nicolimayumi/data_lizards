# The name of this view in Looker is "Design Config Grid Flat"
view: design_config_grid_flat {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.design_config_grid_flat ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Entity ID" in Explore.

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: store_group_id {
    type: number
    sql: ${TABLE}.store_group_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_website_id {
    type: number
    sql: ${TABLE}.store_website_id ;;
  }

  dimension: theme_theme_id {
    type: string
    sql: ${TABLE}.theme_theme_id ;;
  }

  measure: count {
    type: count
    drill_fields: [store.store_id, store.name]
  }
}
