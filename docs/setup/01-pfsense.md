# 01 - pfSense Setup

## Interfaces

| Interface | IP |
|---|---:|
| WAN | `10.197.121.146/24` |
| LAN | `192.168.1.1/24` |

## Basic Steps

1. Install pfSense.
2. Assign WAN and LAN interfaces.
3. Set LAN IP to `192.168.1.1/24`.
4. Enable DHCP only if you are not assigning static IPs manually.
5. Set firewall rules to allow internal lab traffic.
6. Configure DNS forwarding or resolver.
7. Confirm internet access from the LAN.

## Validation

From a LAN machine:

```powershell
ping 192.168.1.1
ping 8.8.8.8
nslookup google.com
```

## Notes

Do not expose lab services directly to the internet unless you know exactly what you are doing.
