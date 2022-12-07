# The name of this view in Looker is "Layout Link"
view: layout_link {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.layout_link ;;
  drill_fields: [layout_link_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: layout_link_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.layout_link_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Is Temporary" in Explore.

  dimension: is_temporary {
    type: yesno
    sql: ${TABLE}.is_temporary ;;
  }

  dimension: layout_update_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.layout_update_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: theme_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.theme_id ;;
  }

  measure: count {
    type: count
    drill_fields: [layout_link_id, store.store_id, store.name, theme.theme_id, layout_update.layout_update_id]
  }
}
