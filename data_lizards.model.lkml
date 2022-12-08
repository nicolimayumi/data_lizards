connection: "team_datalizards"

include: "/views/**/*.view"
include: "/explores/*.lkml"
#include: "/dashboards/*.dashboard.lookml"


datagroup: data_lizards_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: data_lizards_default_datagroup
