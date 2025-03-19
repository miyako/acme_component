﻿# **Method :** acme__domainReverse
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns a domain in a reversed form
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | domainReversed | TEXT | acme-v02.api.letsencrypt.org | 
| $1 | IN | domain | TEXT | domain (e.g. "acme-v02.api.letsencrypt.org" | 

## **Notes :** 

## **Example :** 
```

       ASSERT(acme__domainReverse ("acme-v02.api.letsencrypt.org")="org.letsencrypt.api.acme-v02")
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 12/02/2019, 20:24:03 - 1.00.00
