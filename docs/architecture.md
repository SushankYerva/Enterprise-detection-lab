# Architecture

## Overview

This detection lab simulates a small enterprise network.

The lab contains:

- pfSense as the firewall/router
- Active Directory for identity and DNS
- Windows 10 endpoint as a monitored workstation
- Splunk as the SIEM
- Zeek for network metadata
- Suricata for IDS alerts
- Attacker VM for controlled test traffic

## IP Layout

| System | IP |
|---|---:|
| pfSense WAN | `10.197.121.146/24` |
| pfSense LAN | `192.168.1.1/24` |
| Active Directory | `192.168.1.10` |
| Splunk | `192.168.1.20` |
| Windows 10 | `192.168.1.100` |
| Zeek + Suricata | `TBD` |
| Attacker VM | `TBD` |

## Data Flow

```text
Windows 10 / Active Directory
        │
        │ Windows Event Logs / Sysmon
        ▼
Splunk Universal Forwarder
        │
        ▼
Splunk Indexer/Search Head

pfSense / Zeek / Suricata
        │
        │ Firewall logs / conn.log / dns.log / eve.json
        ▼
Splunk
```

## Design Notes

The lab separates endpoint telemetry and network telemetry.

Endpoint telemetry gives process, authentication, and Windows activity.

Network telemetry gives connection, DNS, HTTP, TLS, and IDS visibility.

Splunk acts as the central investigation layer.
