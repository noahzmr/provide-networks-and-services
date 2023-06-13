provider "ciscoios" {
  host     = "x.x.x.x"  # Replace with the IP address of your Cisco router
  username = "cisco"
  password = "cisco123!"
}

resource "ciscoios_hostname" "hostname" {
  hostname = "B-RT-01"
}

resource "ciscoios_enable_password" "enable_password" {
  password = "cisco123!"
}

resource "ciscoios_interface" "gigabitethernet0/0/0" {
  name       = "GigabitEthernet0/0/0"
  description = ""
  ip_address = []
  shutdown   = false
  duplex     = "auto"
  speed      = "auto"
}

resource "ciscoios_interface" "gigabitethernet0/0/0.2" {
  name         = "GigabitEthernet0/0/0.2"
  encapsulation_dot1q = 2
  ip_address = [
    "10.0.3.1 255.255.255.0",
  ]
  ipv6_address = [
    "2001:DB8:2003::1/64",
  ]
}

resource "ciscoios_interface" "gigabitethernet0/0/1" {
  name       = "GigabitEthernet0/0/1"
  description = ""
  ip_address = []
  shutdown   = true
  duplex     = "auto"
  speed      = "auto"
}

resource "ciscoios_interface" "gigabitethernet0/0/2" {
  name       = "GigabitEthernet0/0/2"
  description = ""
  ip_address = []
  shutdown   = true
  duplex     = "auto"
  speed      = "auto"
}

resource "ciscoios_interface" "serial0/1/0" {
  name       = "Serial0/1/0"
  description = ""
  ip_address = [
    "192.168.2.2 255.255.255.252",
  ]
  ipv6_address = [
    "FD00::9/128",
  ]
  clock_rate  = 2000000
}

resource "ciscoios_interface" "serial0/1/1" {
  name       = "Serial0/1/1"
  description = ""
  ip_address = [
    "192.168.4.2 255.255.255.252",
  ]
  ipv6_address = [
    "FD00::8/128",
  ]
}

resource "ciscoios_interface" "serial0/2/0" {
  name       = "Serial0/2/0"
  description = ""
  ip_address = [
    "192.168.6.2 255.255.255.252",
  ]
  ipv6_address = [
    "FD00::10/128",
  ]
}

resource "ciscoios_vlan" "vlan1" {
  name     = "Vlan1"
  shutdown = true
}

resource "ciscoios_vlan" "vlan2" {
  name         = "Vlan2"
  mac_address  = "0003.e458.2301"
  ip_address = []
  shutdown     = false
}

resource "ciscoios_router_rip" "rip" {}

resource "ciscoios_static_route" "route1" {
  network   = "10.0.3.0"
  mask      = "255.255.255.0"
  interface = "GigabitEthernet0/0/0.2"
}

resource "ciscoios_static_route" "route2" {
  network   = "10.0.1.0"
  mask      = "255.255.255.192"
  next_hop  = "192.168.2.1"
}

resource "ciscoios_static_route" "route3" {
  network   = "10.0.1.0"
  mask      = "255.255.255.192"
  interface = "Serial0/1/0"
}

resource "ciscoios_static_route" "route4" {
  network   = "10.0.2.0"
  mask      = "255.255.255.192"
  next_hop  = "192.168.4.1"
}

resource "ciscoios_static_route" "route5" {
  network   = "10.0.4.0"
  mask      = "255.255.255.0"
  next_hop  = "192.168.6.1"
}

resource "ciscoios_static_route" "route6" {
  network   = "10.0.1.0"
  mask      = "255.255.255.0"
  next_hop  = "192.168.2.1"
}

resource "ciscoios_static_route" "route7" {
  network   = "10.0.2.0"
  mask      = "255.255.255.0"
  next_hop  = "192.168.4.1"
}

resource "ciscoios_ipv6_route" "ipv6_route1" {
  network    = "2001:DB8:2003::/48"
  interface = "GigabitEthernet0/0/0.2"
}

resource "ciscoios_ipv6_route" "ipv6_route2" {
  network    = "2001:DB8:2000::/48"
  interface = "Serial0/1/0"
}

resource "ciscoios_ipv6_route" "ipv6_route3" {
  network    = "2001:DB8:2001::/48"
  interface = "Serial0/1/1"
}

resource "ciscoios_ipv6_route" "ipv6_route4" {
  network    = "2001:DB8:2004::/48"
  interface = "Serial0/2/0"
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

resource "ciscoios_line_con" "line_con0" {
  password = "cisco123!"
}

resource "ciscoios_line_vty" "line_vty0_4" {
  transport_input = ["ssh"]
  login_local     = true
}

