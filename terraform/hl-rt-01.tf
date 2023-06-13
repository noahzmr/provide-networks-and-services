# Cisco Router Configuration

provider "ciscoios" {
  username = "cisco"
  password = "cisco123!"
  host     = "192.168.1.1"
}

resource "ciscoios_loopback" "loopback0" {
  description = "Loopback für HL-RT-01"
  ipv6_address = "FD00::15/128"
}

resource "ciscoios_interface" "gigabitethernet0/0/0" {
  description = "GigabitEthernet0/0/0"
}

resource "ciscoios_interface" "gigabitethernet0/0/0.2" {
  encapsulation_dot1q = 2
  ip_address          = "10.0.2.1"
  ip_subnet           = 26
  ip_helper_address   = "10.0.3.3"
  ipv6_address        = "2001:DB8:2001:2::1/64"
}

resource "ciscoios_interface" "gigabitethernet0/0/0.3" {
  encapsulation_dot1q = 3
  ip_address          = "10.0.2.65"
  ip_subnet           = 26
  ip_helper_address   = "10.0.3.3"
  ipv6_address        = "2001:DB8:2001:3::1/64"
}

resource "ciscoios_interface" "gigabitethernet0/0/1" {
  description = "GigabitEthernet0/0/1"
}

resource "ciscoios_interface" "gigabitethernet0/0/2" {
  description = "GigabitEthernet0/0/2"
}

resource "ciscoios_interface" "serial0/1/0" {
  ip_address    = "192.168.1.2"
  ip_subnet     = 30
  ipv6_address  = "FD00::13/128"
  clock_rate    = 2000000
}

resource "ciscoios_interface" "serial0/1/1" {
  ip_address    = "192.168.4.1"
  ip_subnet     = 30
  ipv6_address  = "FD00::12/128"
  clock_rate    = 2000000
}

resource "ciscoios_interface" "serial0/2/0" {
  ip_address    = "192.168.5.1"
  ip_subnet     = 30
  ipv6_address  = "FD00::11/128"
}

resource "ciscoios_interface" "serial0/2/1" {
  description = "Serial0/2/1"
  clock_rate  = 2000000
}

resource "ciscoios_vlan" "vlan1" {
  shutdown = true
}

resource "ciscoios_vlan" "vlan2" {
  mac_address = "0009.7cc7.2301"
}

resource "ciscoios_vlan" "vlan3" {
  mac_address = "0009.7cc7.2302"
}

resource "ciscoios_static_route" "route1" {
  network  = "10.0.1.0"
  mask     = "255.255.255.192"
  next_hop = "192.168.1.1"
}

resource "ciscoios_static_route" "route2" {
  network  = "10.0.3.0"
  mask     = "255.255.255.0"
  next_hop = "192.168.4.2"
}

resource "ciscoios_static_route" "route3" {
  network    = "10.0.4.0"
  mask       = "255.255.255.0"
  next_hop   = "192.168.5.2"
}

resource "ciscoios_static_route" "route4" {
  network    = "10.0.2.0"
  mask       = "255.255.255.192"
  interface  = "GigabitEthernet0/0/0.3"
}

resource "ciscoios_static_route" "route5" {
  network    = "10.0.2.0"
  mask       = "255.255.255.192"
  interface  = "GigabitEthernet0/0/0.2"
}

resource "ciscoios_static_route" "route6" {
  network  = "10.0.1.0"
  mask     = "255.255.255.0"
  next_hop = "192.168.1.1"
}

resource "ciscoios_ipv6_route" "route1" {
  network    = "2001:DB8:2001::/48"
  interface  = "GigabitEthernet0/0/0"
}

resource "ciscoios_ipv6_route" "route2" {
  network    = "2001:DB8:2000::/48"
  interface  = "Serial0/1/0"
}

resource "ciscoios_ipv6_route" "route3" {
  network    = "2001:DB8:2003::/48"
  interface  = "Serial0/1/1"
}

resource "ciscoios_ipv6_route" "route4" {
  network    = "2001:DB8:2004::/48"
  interface  = "Serial0/2/0"
}

resource "ciscoios_ipv6_route" "route5" {
  network    = "2001:DB8:2001:3::/64"
  interface  = "GigabitEthernet0/0/0.3"
}

resource "ciscoios_ipv6_route" "route6" {
  network    = "2001:DB8:2001:2::/64"
  interface  = "GigabitEthernet0/0/0.2"
}

resource "ciscoios_ipv6_access_list" "accesslist1" {
  name           = "HL-SSH"
  permit_tcp     = "2001:DB8::/32"
  permit_port    = 22
}

resource "ciscoios_banner" "motd" {
  message = <<EOF
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

resource "ciscoios_line_aux" "line_aux0" {}

resource "ciscoios_line_vty" "line_vty0_4" {
  transport_input = ["ssh"]
  login_local     = true
}

resource "ciscoios_line_vty" "line_vty5_15" {
  ipv6_access_class = "HL-SSH"
  login_local       = true
  transport_input   = ["ssh"]
}

