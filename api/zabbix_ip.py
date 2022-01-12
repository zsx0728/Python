#本脚本需与zabbix_base.py脚本放在统一目录下
#本脚本提取zabbix内所有设备IP，然后写入文件
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
    ip_out.write(result["result"][ip_number]['interfaces'][0]['ip'] + ' ' + result["result"][ip_number]['host'] + '\n')
    ip_out.flush()
  ip_out.close()
