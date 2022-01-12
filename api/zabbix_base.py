import json
from urllib.request import Request,urlopen
#本脚本作为基础，提供zabbix认证接口
#zabbix url地址
zabbix_url = "http://XXX/zabbix/api_jsonrpc.php"
zabbix_header = {"Content-Type":"application/json"}

def zabbix_api_common(data):
  data = json.dumps(data).encode('utf-8')
  req = Request(zabbix_url, headers=zabbix_header, data=data)
  # print(req)  #<urllib.request.Request object at 0x000001C281BF2408>
  result = urlopen(req).read()
  return json.loads(result)

def get_token():
    #填写zabbix登陆页面的用户名密码
    zabbix_user   = "xxx"
    zabbix_pass   = "xxx"
    data = {
      "jsonrpc":"2.0",
      "method":"user.login",
      "params":{
        "user":zabbix_user,
        "password":zabbix_pass
      },
      "id":0
    }
    result = zabbix_api_common(data)
    return (result["result"])

if __name__ == "__main__":
  result = get_token()
  #print(result)
