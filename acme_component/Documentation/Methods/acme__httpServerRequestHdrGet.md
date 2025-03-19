﻿# **Method :** acme__httpServerRequestHdrGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function return the header value from a httpServerHeader for a given key
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | headerValue | TEXT | header value | 
| $1 | IN | httpServerHeaderObject | OBJECT | http server header object | 
| $2 | IN | headerKey | TEXT | header key (will match case insensitive) | 

## **Notes :** 

## **Example :** 
```
acme__httpServerRequestHdrGet
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 25/06/2018, 17:21:05 - 1.0
