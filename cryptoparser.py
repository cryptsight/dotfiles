import requests

coins=["bitcoin","ethereum","zilliqa","governance-zil","monero", "dogebonk"]
coinskurz=["BTC", "ETH", "ZIL","GZIL", "XMR", "DOBO"]
url="https://coinmarketcap.com/currencies/"
file=open("/home/cryptsight/Programme/cryptovalues", "w")
i=0
for x in coins:
    try:
        website=requests.get(url+coins[i])
        data=str(website.content)
        start_div=data.find("Price</strong>") + 23
        end_div=data[start_div:start_div+20].find("</td>")
        price=data[start_div:start_div+end_div].find("</")
    except:
        pass
    if("polkadot") in x:
        coins[i]=x.replace("-new", "")
    if("binance-coin") in x:
        coins[i]=x[0:8]+x[8].upper()+x[9:]  
    file.write(coinskurz[i]+" "+data[start_div+price+1:start_div+end_div]+"\n")
    i+=1
file.close()
