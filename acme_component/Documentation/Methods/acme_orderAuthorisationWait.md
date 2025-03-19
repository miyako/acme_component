﻿# **Method :** acme_orderAuthorisationWait
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function waits that all the authorizations have passed the "pending" status...
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | orderObject | OBJECT | order object (not modified) | 
| $2 | IN | nbSecondsMax | LONGINT | number of seconds to wait for | 

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
acme_orderAuthorisationWait
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 14/02/2019, 00:59:37 - 0.90.01
