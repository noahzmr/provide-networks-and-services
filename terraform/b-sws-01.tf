provider "ciscoios" {
  host     = "x.x.x.x"  # Replace with the IP address of your Cisco switch
  username = "cisco"
  password = "cisco123!"
}

resource "ciscoios_hostname" "hostname" {
  hostname = "B-SWS-01"
}

resource "ciscoios_enable_password" "enable_password" {
  password = "cisco123!"
}

resource "ciscoios_username" "cisco" {
  username = "cisco"
  password = "cisco123!"
}

resource "ciscoios_username" "noahzmr" {
  username = "noahzmr"
  password = "Moin123"
}

resource "ciscoios_interface" "gigabitethernet1/0/1" {
  name                 = "GigabitEthernet1/0/1"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode       = "trunk"
}

resource "ciscoios_interface" "gigabitethernet1/0/2" {
  name                 = "GigabitEthernet1/0/2"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/3" {
  name                 = "GigabitEthernet1/0/3"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/4" {
  name                 = "GigabitEthernet1/0/4"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/5" {
  name                 = "GigabitEthernet1/0/5"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/6" {
  name                 = "GigabitEthernet1/0/6"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/7" {
  name                 = "GigabitEthernet1/0/7"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/8" {
  name                 = "GigabitEthernet1/0/8"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/9" {
  name                 = "GigabitEthernet1/0/9"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/10" {
  name                 = "GigabitEthernet1/0/10"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
  switchport_nonegotiate = true
}

resource "ciscoios_interface" "gigabitethernet1/0/11" {
  name                 = "GigabitEthernet1/0/11"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/12" {
  name                 = "GigabitEthernet1/0/12"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/13" {
  name                 = "GigabitEthernet1/0/13"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/14" {
  name                 = "GigabitEthernet1/0/14"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/15" {
  name                 = "GigabitEthernet1/0/15"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}


resource "ciscoios_interface" "gigabitethernet1/0/16" {
  name                 = "GigabitEthernet1/0/16"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/17" {
  name                 = "GigabitEthernet1/0/17"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/18" {
  name                 = "GigabitEthernet1/0/18"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/19" {
  name                 = "GigabitEthernet1/0/19"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/20" {
  name                 = "GigabitEthernet1/0/20"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/21" {
  name                 = "GigabitEthernet1/0/21"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/22" {
  name                 = "GigabitEthernet1/0/22"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/23" {
  name                 = "GigabitEthernet1/0/23"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/0/24" {
  name                 = "GigabitEthernet1/0/24"
  switchport_access_vlan = 2
  switchport_trunk_vlan  = 2
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/1/1" {
  name                 = "GigabitEthernet1/1/1"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/1/2" {
  name                 = "GigabitEthernet1/1/2"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/1/3" {
  name                 = "GigabitEthernet1/1/3"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
}

resource "ciscoios_interface" "gigabitethernet1/1/4" {
  name                 = "GigabitEthernet1/1/4"
  switchport_access_vlan = 2
  switchport_trunk_allowed_vlans = [2]
  switchport_mode        = "access"
}

resource "ciscoios_interface_vlan" "vlan1" {
  vlan_id      = 1
  shutdown     = true
}

resource "ciscoios_interface_vlan" "vlan2" {
  vlan_id      = 2
  description  = "VLAN_2"
  mac_address  = "0030.a3a1.5201"
  ip_addresses = ["10.0.3.2 255.255.255.0"]
  ipv6_addresses = ["2001:DB8:2003::2/64"]
}

resource "ciscoios_interface_vlan" "vlan3" {
  vlan_id      = 3
  description  = "VLAN_3"
  mac_address  = "0030.a3a1.5202"
  ip_addresses = []
}

resource "ciscoios_banner" "banner_motd" {
  banner_exec = false
  text        = <<EOF
********************************************************
*                                                      *
*     Access restricted to authorized personnel        *
*                                                      *
*  This system contains confidential information and   *
*  is intended for authorized users only. Unauthorized *
*  access attempts are strictly prohibited. Changes    *
*  made to the configuration may have implications     *
*  for the company. Ensure that you have the necessary *
*  authorization to make any modifications.            *
*                                                      *
*  All changes must be saved to persist after a        *
*  restart.                                            *
*                                                      *
*  Remember to properly log out when you have          *
*  completed your work.                                *
*                                                      *
********************************************************
EOF
}

resource "ciscoios_line" "line_con_0" {
  line     = "con 0"
  password = "cisco123!"
}

resource "ciscoios_line" "line_aux_0" {
  line = "aux 0"
}

resource "ciscoios_line" "line_vty_0_4" {
  line           = "vty 0 4"
  transport_input = ["ssh"]
  login_local     = true
}
