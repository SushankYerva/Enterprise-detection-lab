# Windows Audit Policy Notes

Enable Advanced Audit Policy for reliable endpoint visibility.

## Important Categories

- Logon
- Account Logon
- Account Management
- Process Creation
- PowerShell Logging

## Check Process Creation

```powershell
auditpol /get /subcategory:"Process Creation"
```

Expected:

```text
Process Creation    Success
```

## Enable Command Line in Process Creation Events

GPO path:

```text
Computer Configuration
→ Administrative Templates
→ System
→ Audit Process Creation
→ Include command line in process creation events
```
