# Run as Administrator on Windows endpoint or domain controller.
# Enables useful audit policy categories for the detection lab.

auditpol /set /subcategory:"Process Creation" /success:enable /failure:enable
auditpol /set /subcategory:"Logon" /success:enable /failure:enable
auditpol /set /subcategory:"Account Lockout" /success:enable /failure:enable
auditpol /set /subcategory:"User Account Management" /success:enable /failure:enable
auditpol /set /subcategory:"Security Group Management" /success:enable /failure:enable

Write-Host "Current Process Creation audit setting:"
auditpol /get /subcategory:"Process Creation"
