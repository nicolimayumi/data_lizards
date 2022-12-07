# The name of this view in Looker is "Importexport Importdata"
view: importexport_importdata {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: mmqdfmwbcb.importexport_importdata ;;
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
  # This dimension will be called "Behavior" in Explore.

  dimension: behavior {
    type: string
    sql: ${TABLE}.behavior ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
