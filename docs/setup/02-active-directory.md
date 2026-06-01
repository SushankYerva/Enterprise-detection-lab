# 02 - Active Directory Setup

## Server

| Item | Value |
|---|---|
| IP | `192.168.1.10` |
| Role | Domain Controller + DNS |
| Domain | `DETECT.local` or your chosen lab domain |

## Basic Steps

1. Set static IP on the server.
2. Set DNS server to itself: `192.168.1.10`.
3. Install Active Directory Domain Services.
4. Promote the server to a Domain Controller.
5. Create OUs for:
   - Workstations
   - Servers
   - Users
6. Create lab users.
7. Create a GPO for audit policy.
8. Link the GPO to the Workstations OU.

## Recommended Audit Events

| Event ID | Meaning |
|---:|---|
| 4624 | Successful logon |
| 4625 | Failed logon |
| 4688 | Process creation |
| 4672 | Special privileges assigned |
| 4720 | User account created |
| 4726 | User account deleted |
| 4732 | Member added to local group |

## Validation

```powershell
dcdiag
repadmin /replsummary
gpresult /r /scope computer
```
