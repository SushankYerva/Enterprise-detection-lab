# 03 - Windows 10 Endpoint Setup

## Endpoint

| Item | Value |
|---|---|
| IP | `192.168.1.100` |
| Gateway | `192.168.1.1` |
| DNS | `192.168.1.10` |
| Domain | `DETECT.local` or your lab domain |

## Steps

1. Set static IP.
2. Set DNS to Active Directory server.
3. Join the endpoint to the domain.
4. Move computer object into the correct OU.
5. Apply GPO.
6. Install Splunk Universal Forwarder.
7. Enable Advanced Audit Policy.
8. Optionally install Sysmon.

## Validate GPO

```powershell
gpupdate /force
gpresult /r /scope computer
auditpol /get /subcategory:"Process Creation"
```

Expected:

```text
Process Creation    Success
```
