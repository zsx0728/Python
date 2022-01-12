import zabbix_base
token = zabbix_base.get_token()
data = {
    "jsonrpc": "2.0",
    "method": "host.get",
    "params": {
      "output": [
        "host",
      ],
      "selectInterfaces": [
        "ip",
      ]
    },
    "auth": token,
    "id": 0
}
result = zabbix_base.zabbix_api_common(data)
print(len(result["result"]))
with open('zabbix_ip.txt','a+') as ip_out:
  for ip_number in range(len(result["result"])):
    #print(result["result"][ip_number]["interfaces"][0]["ip"])
    ip_out.write(result["result"][ip_number]['interfaces'][0]['ip'] + ' ' + result["result"][ip_number]['host'] + '\n')
    ip_out.flush()
  ip_out.close()
