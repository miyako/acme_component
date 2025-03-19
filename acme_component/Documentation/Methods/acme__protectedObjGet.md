﻿# **Method :** acme__protectedObjGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the "protected" object for the JWT signature
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | protected | OBJECT | protected object | 
| $1 | IN | url | TEXT | url (e.g. "https://acme-staging-v02.api.letsencrypt.org/acme/new-acct") | 
| $2 | IN | accountKeyDir | TEXT | account key directory | 
| $3 | IN | algorithme | TEXT | alogithm for the jwt protected "alg" property (e.g. "RS256" for RSA 256) | 

## **Notes :** 

## **Example :** 
```
acme__protectedObjGet
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/06/2018, 12:09:47 - 1.00.00
