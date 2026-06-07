# Scenario 03 - PowerShell Process Creation

## Objective

Validate that Windows process creation telemetry is working.

## Expected Logs

| Source | Event |
|---|---|
| Windows Security | 4688 |
| Sysmon | 1 |

## Test

Run the benign script:

```powershell
./scripts/windows/generate-lab-events.ps1
```

## Splunk Query

```spl
index=windows EventCode=4688 powershell
| table _time host Account_Name New_Process_Name Process_Command_Line
| sort - _time
```
