﻿# **Method :** acme_directoryMetaPropertyGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the "termsOfService" url (e.g. "https://letsencrypt.org/documents/LE-SA-v1.2-November-15-2017.pdf)
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | metaPropertyValue | TEXT | acme_termsOfServiceUrlGet("termsOfService") => "termsOfService" url | 
| $1 | IN | metaPropertyName | TEXT | meta property name "termsOfService" or "website" (optional, default "termsOfService") | 

## **Notes :** 

      
       curl https://acme-staging-v02.api.letsencrypt.org/directory
       {
         "IKpf1NyBPSU": "https://community.letsencrypt.org/t/adding-random-entries-to-the-directory/1234",
         "keyChange": "https://acme-staging-v02.api.letsencrypt.org/acme/key-change",
         "meta": {
           "caaIdentities": [
             "letsencrypt.org"
           ],
           "termsOfService": "https://letsencrypt.org/documents/LE-SA-v1.2-November-15-2017.pdf",
           "website": "https://letsencrypt.org/docs/staging-environment/"
         },
         "newAccount": "https://acme-staging-v02.api.letsencrypt.org/acme/new-acct",
         "newNonce": "https://acme-staging-v02.api.letsencrypt.org/acme/new-nonce",
         "newOrder": "https://acme-staging-v02.api.letsencrypt.org/acme/new-order",
         "revokeCert": "https://acme-staging-v02.api.letsencrypt.org/acme/revoke-cert"
       }
## **Example :** 
```
acme_directoryMetaPropertyGet
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 05/03/2020, 13:24:13 - 0.90.13
