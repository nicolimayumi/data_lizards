connection: "@{CONNECTION_NAME}"

include: "/views/*.view.lkml"
include: "/explores/*.explore.lkml"
include: "/dashboards/*.dashboard.lookml"

datagroup: nightly {
  sql_trigger: SELECT TIMEZONE('US/Pacific',GETDATE())::DATE;;
}