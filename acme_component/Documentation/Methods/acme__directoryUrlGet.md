﻿# **Method :** acme__directoryUrlGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the url for a given "service" from a "directory" url
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | serviceUrl | TEXT | service url ( | 
| $1 | IN | directoryUrl | TEXT | directory url ("https://acme-v02.api.letsencrypt.org/directory" or "https://acme-staging-v02.api.letsencrypt.org/directory") | 
| $2 | IN | serviceKey | TEXT | service key ("newAccount", "newNonce", "newOrder", "revokeCert") | 

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
acme__directoryUrlGet
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 07:22:27 - 1.00.00
