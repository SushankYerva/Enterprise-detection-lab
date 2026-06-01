# 06 - Attacker VM Setup

## Purpose

The attacker VM is used only for controlled lab event generation.

Do not use this system against networks or devices you do not own or have explicit permission to test.

## Safe Test Categories

- ICMP connectivity checks
- DNS lookups
- Basic TCP connection tests
- Controlled authentication failure tests
- Controlled port scan against your own lab machines
- Benign PowerShell process creation on your own Windows endpoint

## Evidence to Capture

- Commands executed
- Timestamp
- Target host
- Expected log source
- Splunk query used
- Screenshot of result
