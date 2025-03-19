﻿# **Method :** acme__urlLocationIdGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the last part of a "Location" http response header url
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | id | TEXT | id | 
| $1 | IN | url | TEXT | location url | 

## **Notes :** 

## **Example :** 
```

       acme__urlLocationIdGet ("https://acme-staging-v02.api.letsencrypt.org/acme/order/12345") => "12345"
       acme__urlLocationIdGet ("https://acme-staging-v02.api.letsencrypt.org/acme/order/12345/6789") => "6789"
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 28/06/2018, 18:24:05 - 1.0
