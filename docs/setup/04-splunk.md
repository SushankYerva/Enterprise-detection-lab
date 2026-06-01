# 04 - Splunk Setup

## Server

| Item | Value |
|---|---|
| IP | `192.168.1.20` |
| Role | SIEM / Log Analytics |

## Recommended Indexes

| Index | Purpose |
|---|---|
| `windows` | Windows Security, System, PowerShell logs |
| `sysmon` | Sysmon logs |
| `suricata` | Suricata IDS alerts |
| `zeek` | Zeek network logs |
| `pfsense` | Firewall logs |

## Install Apps

Recommended apps:

- Splunk Add-on for Microsoft Windows
- Splunk Add-on for Sysmon
- Splunk Common Information Model Add-on
- Suricata / Zeek parsing add-ons if needed

## Validate Ingestion

```spl
index=* earliest=-15m
| stats count by index sourcetype host
```
