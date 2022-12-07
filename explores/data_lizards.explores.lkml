# include all the views
include: "/views/**/*.view"

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
