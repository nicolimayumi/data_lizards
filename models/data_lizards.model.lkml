connection: "team_datalizards"

# include all the views
include: "/views/**/*.view"

datagroup: data_lizards_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: data_lizards_default_datagroup

#MAIN EXPLORE
explore: sales_order {
  label: "Magento: Orders"
  join: store {
    type: left_outer
    sql_on: ${sales_order.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }
  join: sales_order_item {
    type: left_outer
    sql_on: ${sales_order.entity_id} = ${sales_order_item.order_id} ;;
    relationship: one_to_many
  }
  join: sales_order_address {
    type: left_outer
    sql_on: ${sales_order.entity_id} = ${sales_order_address.entity_id} ;;
    relationship: one_to_one
  }

}
