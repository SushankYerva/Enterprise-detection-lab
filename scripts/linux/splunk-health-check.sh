#!/usr/bin/env bash
set -euo pipefail

echo "[+] Checking Splunk service"
sudo systemctl status Splunkd --no-pager || true

echo "[+] Checking listening ports"
ss -tulpn | grep -E '8000|8089|9997' || true

echo "[+] Recent Splunk logs"
sudo tail -n 50 /opt/splunk/var/log/splunk/splunkd.log || true
