﻿# **Method :** acme_accountStatus
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This method creates a new account
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | directoryUrl | TEXT | directory url (e.g. "https://acme-v02.api.letsencrypt.org/directory") | 
| $2 | IN | url | OBJECT | account url (location) (e.g. "https://acme-staging-v02.api.letsencrypt.org/acme/acct/12345678") | 
| $3 | OUT | accountObjPrt | POINTER | account object pointer | 
| $4 | IN | certDir | TEXT | certbase dir path | 

## **Notes :** 

## **Example :** 
```
acme_accountStatus
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/06/2018, 16:57:55 - 1.00.00
