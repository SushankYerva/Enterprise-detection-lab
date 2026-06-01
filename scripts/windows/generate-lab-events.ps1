# Safe local event generation for your own lab machine.
# Run only on systems you own or have permission to test.

Write-Host "Generating benign process creation events..."
whoami
hostname
ipconfig /all
powershell -NoProfile -Command "Get-Date"

Write-Host "Check Splunk for EventCode=4688 or Sysmon EventCode=1."
