﻿# **Method :** acme_certificateOrderAndInstall
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function will generate the certifcate request, sent it to Let's Encrypt®, retrive the certificate, install it and restart 4D web/http server
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | domainListPtr | POINTER | domain list text or text array pointer (not modified) | 

## **Notes :** 

## **Example :** 
```
acme_certificateOrderAndInstall
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 05/03/2020, 18:33:43 - 0.90.15
