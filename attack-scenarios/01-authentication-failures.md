# Scenario 01 - Authentication Failures

## Objective

Generate failed Windows logon events and detect them in Splunk.

## Expected Logs

| Source | Event ID |
|---|---:|
| Windows Security | 4625 |

## Detection

```spl
index=windows sourcetype="WinEventLog:Security" EventCode=4625
| stats count by Account_Name, src_ip, host
| sort - count
```
