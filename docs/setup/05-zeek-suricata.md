# 05 - Zeek and Suricata Setup

## Purpose

Zeek provides network metadata.

Suricata provides IDS alerts.

Together, they improve visibility into scans, suspicious DNS, unusual HTTP, and known bad signatures.

## Recommended Logs

### Zeek

- `conn.log`
- `dns.log`
- `http.log`
- `ssl.log`
- `notice.log`

### Suricata

- `eve.json`
- `fast.log`

## Splunk Ingestion

Forward logs using either:

- Splunk Universal Forwarder
- Syslog
- File monitoring inputs

Example file monitoring paths are stored in:

```text
configs/splunk/inputs.conf
```
