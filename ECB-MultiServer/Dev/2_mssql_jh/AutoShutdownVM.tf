module "JB-autoshutdown" {
  source               = "../../.././modules/null_resource"
  local_time           = "${var.Enable_AutoShutDownVM_time}"
  local_time_zone      = "${var.Enable_AutoShutDownVM_time_zone}"
  resource_group_name  = "${local.resource_group_name}"
  virtual_machine_name = ["${module.JBox.vm_name}"]
  subscription_id      = "${var.subscription_id}"
  client_id            = "${var.client_id}"
  client_secret        = "${var.client_secret}"
  tenant_id            = "${var.tenant_id}"
  Enable_AutoShutDown  = "${var.Enable_AutoShutDownVM}"
  Email                = "${var.Enable_AutoShutDownVM_Email}"
  NotificationStatus   = "${var.Status_AutoShutDownVM_Notification}"
}

module "SQL-autoshutdown" {
  source               = "../../.././modules/null_resource"
  local_time           = "${var.Enable_AutoShutDownVM_time}"
  local_time_zone      = "${var.Enable_AutoShutDownVM_time_zone}"
  resource_group_name  = "${local.resource_group_name}"
  virtual_machine_name = ["${module.SQL.vm_name}"]
  subscription_id      = "${var.subscription_id}"
  client_id            = "${var.client_id}"
  client_secret        = "${var.client_secret}"
  tenant_id            = "${var.tenant_id}"
  Enable_AutoShutDown  = "${var.Enable_AutoShutDownVM}"
  Email                = "${var.Enable_AutoShutDownVM_Email}"
  NotificationStatus   = "${var.Status_AutoShutDownVM_Notification}"
}
