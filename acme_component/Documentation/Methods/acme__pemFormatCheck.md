﻿# **Method :** acme__pemFormatCheck
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function check some pem data
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | pemDataPtr | POINTER | pem data blob pointer (not modified) | 
| $2 | IN | pemTypeKey | TEXT | pem type "key" (e.g. "CERTIFICATE" or "RSA PRIVATE KEY") | 
| $3 | IN | multiple | BOOLEAN | multiple entries (optional, default value : FALSE) | 

## **Notes :** 

## **Example :** 
```
acme__pemFormatCheck
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 01/07/2019, 08:58:34 - 0.90.08
