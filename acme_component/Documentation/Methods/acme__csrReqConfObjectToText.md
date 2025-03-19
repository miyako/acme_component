﻿# **Method :** acme__csrReqConfObjectToText
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns an openssl csr configuration file from a csr object
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | csrConf | TEXT | openssl csr configuration | 
| $1 | IN | csrObj | OBJECT | csr object | 

## **Notes :** 

## **Example :** 
```

           
           
           C_OBJET($vo_csrObj)
           OB FIXER($vo_csrObj;"C";"FR")
           OB FIXER($vo_csrObj;"L";"Paris")
           OB FIXER($vo_csrObj;"ST";"Paris (75)")
           OB FIXER($vo_csrObj;"O";"AC Consulting")
           OB FIXER($vo_csrObj;"OU";"AC Consulting")
           OB FIXER($vo_csrObj;"emailAddress";"john@example.com")
           OB FIXER($vo_csrObj;"CN";"www.example.com")
           
           
           C_OBJET($vo_altNames)
           OB FIXER($vo_altNames;"DNS.1";"api.example.com")
           OB FIXER($vo_altNames;"DNS.2";"status.example.com")
      
           acme__csrReqConfObjectNew ($vo_csrObj;$vo_altNames) :
           
           [req]
           default_bits = 2048
           prompt = no
           default_md = sha256
           req_extensions = req_ext
           distinguished_name = dn
           
           [dn]
           C = FR
           L = Paris
           ST = Paris (75)
           O = AC Consulting
           OU = AC Consulting
           emailAddress = john@example.com
           CN = www.example.com
           
           [req_ext]
           subjectAltName = @alt_names
           
           [alt_names]
           DNS.1 = api.example.com
           DNS.2 = status.example.com
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/06/2018, 07:36:56 - 1.00.00
