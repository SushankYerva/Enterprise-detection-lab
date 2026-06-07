# pfSense Interface Plan

| Interface | Network | IP |
|---|---|---:|
| WAN | External/NAT | `10.197.121.146/24` |
| LAN | Detection Lab LAN | `192.168.1.1/24` |

## Firewall Rule Baseline

| Source | Destination | Ports | Action |
|---|---|---|---|
| LAN net | Any | Any | Allow |
| WAN | LAN net | Any | Block |
