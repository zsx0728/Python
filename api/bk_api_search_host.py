import requests
import json
import configparser

# 调用蓝鲸智云平台接口，得到所有主机IP,将结果写入文件bk_ip.txt
def bk_api_search_host(start=0, limit=200):
  #如果API的ip_url是https的，需要添加该行，忽略密钥认证引发的告警
  requests.packages.urllib3.disable_warnings()
  #蓝鲸API的URL，xxx为API的URL
  ip_url = "https://paas.XXX/api/c/compapi/v2/cc/search_host/"
  #API参数
  ip_data = {
    "bk_app_code" : "xxx",
    # xxx为API应用TOKEN
    "bk_app_secret" : "xxx",
    "bk_username" : "admin",
    "ip": {
      "data": [],
      "exact": 1,
      "flag": "bk_host_innerip|bk_host_outerip"
    },
    "page": {
      "start": start,
      "limit": limit,
      "sort": "bk_host_id"
    }
  }
  #发送post请求，接收返回值
  r_ip = requests.post(url=ip_url, data=json.dumps(ip_data), verify=False)
  #将返回值转换为json格式
  response_ip_dict = r_ip.json()
  ip_dicts = response_ip_dict['data']
  demo_ip_dict = ip_dicts['info']
  print("ip number is ",len(demo_ip_dict))
  #将返回值中的bk_host_innerip（IP）写入文件
  with open('bk_ip.txt','a+') as ip_out:
    for ip_number in range(len(demo_ip_dict)):
      ip_out.write(demo_ip_dict[ip_number]['host']['bk_host_innerip'] + '\n')
      ip_out.flush()
  #递归调用自身
  if len(r_ip.json()["data"]["info"]) >= limit:
    bk_api_search_host(start=start + limit)

bk_api_search_host()
