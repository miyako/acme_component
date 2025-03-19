﻿# **Method :** acme_newOrderObject
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns a newOrder object
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | newOrderObject | OBJECT | new order object | 
| $1 | IN | domainListPtr | POINTER | domain list text or text array pointer (not modified) | 

## **Notes :** 

## **Example :** 
```
acme_newOrderObject 
      
       ARRAY TEXT($tt_domain;0)
       APPEND TO ARRAY($tt_domain;"test-ssl.example.com")
       APPEND TO ARRAY($tt_domain;"test1-ssl.example.com")
       APPEND TO ARRAY($tt_domain;"test2-ssl.example.com")
       APPEND TO ARRAY($tt_domain;"test3-ssl.example.com")
       
       C_OBJECT($vo_newOrderObject)
       $vo_newOrderObject:=acme_newOrderObject (->$tt_domain)
      
       {
           "workingDir": "Macintosh HD:Users:ble:Documents:Projets:myapp:",
           "directoryUrl": "https://acme-v02.api.letsencrypt.org/directory",
           "identifiers": [
               {
                   "type": "dns",
                   "value": "test-ssl.example.com"
               },
               {
                   "type": "dns",
                   "value": "test1-ssl.example.com"
               },
               {
                   "type": "dns",
                   "value": "test2-ssl.example.com"
               },
               {
                   "type": "dns",
                   "value": "test3-ssl.example.com"
               }
           ]
       }
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting - 2008
## **History :** 
 CREATION : Bruno LEGAY (BLE) - 03/07/2018, 07:59:52 - v1.00.00
