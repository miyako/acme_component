﻿# **Method :** acme_orderDirPathGet
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the order dir path
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ordersDirPath | TEXT | order dir path | 
| $1 | IN | id | TEXT | order id | 

## **Notes :** 

       "letsencrypt"
         +--  "acme-v02.api.letsencrypt.org" (or "acme-staging-v02.api.letsencrypt.org")
           +--  "_account"
             +--  "key.pub" (rsa public key file in pem format "-----BEGIN RSA PUBLIC KEY-----")
             +--  "key.pem" (rsa private key file in pem format starting with "-----BEGIN RSA PRIVATE KEY-----")
           +--  "_orders"
## **Example :** 
```
acme_orderDirPathGet
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 13/02/2019, 00:35:14 - 1.00.00
