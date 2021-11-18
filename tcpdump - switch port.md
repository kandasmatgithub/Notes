## How to find the switch port and VLAN of a physical NIC using tcpdump

**Run the below commands and look for Device-ID & Port-ID**

```
# ifconfig en2 up
# tcpdump -nn -v -i en2 -s 1500 -c 1 'ether[20:2] == 0x2000'
tcpdump: WARNING: en2: no IPv4 address assigned
tcpdump: listening on en2, link-type 1, capture size 1500 bytes
09:12:06.106495 CDP v2, ttl: 180s, checksum: 692 (unverified)
        Device-ID (0x01), length: 29 bytes: 'STN-RIB-02.network.rbsgrp.net'
        Version String (0x05), length: 290 bytes:
          Cisco Internetwork Operating System Software
          IOS (tm) s72033_rp Software (s72033_rp-IPSERVICESK9_WAN-M), Version 12.2(18)SXF8, RELEASE SOFTWARE (fc2)
          Technical Support: http://www.cisco.com/techsupport
          Copyright (c) 1986-2007 by cisco Systems, Inc.
          Compiled Sat 03-Mar-07 00:49 by tinhuang
        Platform (0x06), length: 14 bytes: 'cisco WS-C6513'
        Address (0x02), length: 13 bytes: IPv4 (1) 11.152.244.2
        Port-ID (0x03), length: 20 bytes: 'GigabitEthernet10/40'
        Capability (0x04), length: 4 bytes: (0x00000029): Router, L2 Switch, IGMP snooping
        VTP Management Domain (0x09), length: 6 bytes: 'KPOR02'
        Native VLAN ID (0x0a), length: 2 bytes: 1
        Duplex (0x0b), length: 1 byte: full
        AVVID trust bitmap (0x12), length: 1 byte: 0x00
        AVVID untrusted ports CoS (0x13), length: 1 byte: 0x00
        unknown field type (0x1a), length: 12 bytes:
          0x0000:  0000 0001 0000 0000 ffff ffff
349 packets received by filter
0 packets dropped by kernel
#

# tcpdump -nn -v -i eno2 -s 1500 -c 1 'ether[20:2] == 0x2000'
tcpdump: listening on eno2, link-type EN10MB (Ethernet), capture size 1500 bytes
12:10:13.298466 CDPv2, ttl: 180s, checksum: 0xe5a5 (unverified), length 364
        Device-ID (0x01), value length: 45 bytes: 'SWITCH_HOSTNAME'             => The switch hostname
        Address (0x02), value length: 13 bytes: IPv4 (1) 10.218.7.6
        Port-ID (0x03), value length: 15 bytes: 'Ethernet108/1/8'               => The port number
        Capability (0x04), value length: 4 bytes: (0x00000229): Router, L2 Switch, IGMP snooping
        Version String (0x05), value length: 66 bytes:
          Cisco Nexus Operating System (NX-OS) Software, Version 7.1(4)N1(1)
        Platform (0x06), value length: 9 bytes: 'N6K-C6004'
        Native VLAN ID (0x0a), value length: 2 bytes: 1389                      => VLAN ID
        AVVID trust bitmap (0x12), value length: 1 byte: 0x00
        AVVID untrusted ports CoS (0x13), value length: 1 byte: 0x00
        Duplex (0x0b), value length: 1 byte: full
        MTU (0x11), value length: 4 bytes: 1500 bytes
        System Name (0x14), value length: 13 bytes: 'SWITCH_SYSTEM_NAME'
        System Object ID (not decoded) (0x15), value length: 14 bytes:
          0x0000:  060c 2b06 0104 0109 0c03 0103 8b51
        Management Addresses (0x16), value length: 13 bytes: IPv4 (1) 11.159.97.12
        Physical Location (0x17), value length: 99 bytes: 0x00/[TRAD]; ID=03015; CITY=LONDON; ADDR1=LONDON; PC=NW6 9RG
1 packet captured
1 packet received by filter
0 packets dropped by kernel
#

```
