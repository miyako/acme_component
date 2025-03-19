﻿# **Method :** acme_orderAuthorisationProcess
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function read the list of authorizations from and order object and prepares the "challenge" response
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | orderObject | OBJECT | order object (not modified) | 

## **Notes :** 

       orderObject :
       {
           "status": "pending",
           "expires": "2018-07-05T16:15:24Z",
           "identifiers": [
               {
                   "type": "dns",
                   "value": "test.example.com"
               },
               {
                   "type": "dns",
                   "value": "test1.example.com"
               },
               {
                   "type": "dns",
                   "value": "test2.example.com"
               },
               {
                   "type": "dns",
                   "value": "test3.example.com"
               }
           ],
           "authorizations": [
               "https://acme-staging-v02.api.letsencrypt.org/acme/authz/n...k",
               "https://acme-staging-v02.api.letsencrypt.org/acme/authz/x...M",
               "https://acme-staging-v02.api.letsencrypt.org/acme/authz/J...U",
               "https://acme-staging-v02.api.letsencrypt.org/acme/authz/m...o"
           ],
           "finalize": "https://acme-staging-v02.api.letsencrypt.org/acme/finalize/12345/6789"
       }
## **Example :** 
```
acme_orderAuthorisationProcess
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 28/06/2018, 18:51:19 - 1.0
