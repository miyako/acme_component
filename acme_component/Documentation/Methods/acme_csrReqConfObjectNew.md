﻿# **Method :** acme_csrReqConfObjectNew
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns a csr request configuration object from a "dn" object and an optional "alt_names" object
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | csr | OBJECT | csr object | 
| $1 | IN | dn | OBJECT | "dn" object (see example) | 
| $1 | IN | altNames | OBJECT | "alt_names" object (see example, optional) | 

## **Notes :** 

## **Example :** 
```

      
        C_OBJET($vo_dn)
        OB FIXER($vo_dn;"C";"FR")
        OB FIXER($vo_dn;"L";"Paris")
        OB FIXER($vo_dn;"ST";"Paris (75)")
        OB FIXER($vo_dn;"O";"AC Consulting")
        OB FIXER($vo_dn;"OU";"AC Consulting")
        OB FIXER($vo_dn;"emailAddress";"webmaster@www.example.com")
        OB FIXER($vo_dn;"CN";"www.example.com")
      
        C_OBJET($vo_csr)
        $vo_csr:=acme_csrReqConfObjectNew ($vo_dn)
      
      
        C_OBJET($vo_dn)
        OB FIXER($vo_dn;"C";"FR")
        OB FIXER($vo_dn;"L";"Paris")
        OB FIXER($vo_dn;"ST";"Paris (75)")
        OB FIXER($vo_dn;"O";"AC Consulting")
        OB FIXER($vo_dn;"OU";"AC Consulting")
        OB FIXER($vo_dn;"emailAddress";"webmaster@www.example.com")
        OB FIXER($vo_dn;"CN";"example.com")
      
        C_OBJET($vo_altNames)
        OB FIXER($vo_altNames;"DNS.1";"www.example.com")
        OB FIXER($vo_altNames;"DNS.2";"staging.example.com")
      
        C_OBJET($vo_csr)
        $vo_csr:=acme_csrReqConfObjectNew ($vo_dn;$vo_altNames)
      
       =>
           {
             "req": {
               "default_bits": 2048,
               "prompt": false,
               "default_md": "sha256",
               "req_extensions": "req_ext",
               "distinguished_name": "dn"
             },
             "dn": {
               "C": "FR",
               "L": "Paris",
               "ST": "Paris (75)",
               "O": "AC Consulting",
               "OU": "AC Consulting",
               "emailAddress": "john@example.com",
               "CN": "www.example.com"
             },
             "req_ext": {
               "subjectAltName": "@alt_names"
             },
             "alt_names": {
               "DNS.1": "api.example.com",
               "DNS.2": "status.example.com"
             }
           }
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/06/2018, 07:00:57 - 1.00.00
