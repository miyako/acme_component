﻿# **Method :** acme__nonceRefresh
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method will update the "nonce" value which can be used on the next request
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | status | LONGINT | http status | 
| $3 | IN | headerKeyArrayPtr | POINTER | header key text array pointer (not modified) | 
| $3 | IN | headerValArrayPtr | POINTER | header values text array pointer (not modified) | 

## **Notes :** 

## **Example :** 
```
acme__nonceRefresh
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 13/02/2019, 21:32:48 - 0.90.00
