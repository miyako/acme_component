﻿# **Method :** acme__nonceHeaderGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the value for "Replay-Nonce"
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | nonce | TEXT | value for response header "Replay-Nonce" (e.g. "qPieoRf2bSbHkg_2_iKLDhL-6XeL09ySyNupClpeXPM") | 
| $1 | IN | status | LONGINT | http status | 
| $2 | IN | paramName | POINTER | http response header key text array pointer (not modified) | 
| $3 | IN | paramName | POINTER | http response header value text array pointer (not modified) | 

## **Notes :** 

## **Example :** 
```
acme__nonceHeaderGet
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 06:32:08 - 1.00.00
