# Windows Audit Policy Notes

Enable Advanced Audit Policy for reliable endpoint visibility.

## Important Categories

- Account Logon
- Account Management
- Detailed Tracking
- DS Access
- Logon and Logoff
- Policy Change
- System
- Process Tracking
- PowerShell Logging


## Enable Command Line in Process Creation Events

GPO path:

```text
Computer Configuration
-> Administrative Templates
-> System
-> Audit Process Creation
-> Include command line in process creation events
```

## Enable PowerShell logging

GPO path:

```text
Computer Configuration
-> Administrative Templates
-> Windows Components
-> Windows PowerShell
-> Turn on PowerShell Script Block Logging
```

## Enable "Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings"

GPO path:

```text
Computer Configuration
-> Policy
-> Windows Settings
-> Security Settings
-> Local Policies
-> Security options
```

