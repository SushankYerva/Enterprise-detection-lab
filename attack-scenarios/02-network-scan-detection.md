# Scenario 02 - Network Scan Detection

## Objective

Detect controlled network scanning against your own lab subnet or lab host.

## Scope

Only test systems you own inside the detection lab.

## Expected Logs

| Source | Signal |
|---|---|
| Zeek | Many connections from one source |
| Suricata | IDS scan/signature alerts |
| pfSense | Firewall connection logs |

## Splunk Query

```spl
index=zeek sourcetype=zeek:conn earliest=-1h
| stats dc(id.resp_p) as unique_ports count by id.orig_h, id.resp_h
| where unique_ports > 20
| sort - unique_ports
```
