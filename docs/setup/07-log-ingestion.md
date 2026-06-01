# 07 - Log Ingestion Checklist

## Windows / AD

| Source | Method | Destination Index |
|---|---|---|
| Security Event Log | Splunk Universal Forwarder | `windows` |
| System Event Log | Splunk Universal Forwarder | `windows` |
| PowerShell Logs | Splunk Universal Forwarder | `windows` |
| Sysmon | Splunk Universal Forwarder | `sysmon` |

## Network

| Source | Method | Destination Index |
|---|---|---|
| Zeek | File monitor/syslog | `zeek` |
| Suricata | File monitor/syslog | `suricata` |
| pfSense | Syslog | `pfsense` |

## Validation SPL

```spl
index=* earliest=-30m
| stats count latest(_time) as latest_event by index sourcetype host
| convert ctime(latest_event)
| sort index
```
