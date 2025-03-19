﻿# **Method :** acme__challengeRequest
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function initiates a challenge request and returns the result
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | directoryUrl | TEXT | directory url (e.g. "https://acme-v02.api.letsencrypt.org/directory") | 
| $2 | IN | url | TEXT | url | 
| $3 | IN | workingDir | TEXT | working dir | 

## **Notes :** 

       get the CA to do the challenge
       the CA will try to do an "HTTP GET /.well-known/acme-challenge/<token>" (and we will return the file we have just generated)
       see "acme_onWebAuthentication" and "acme_onWebConnection"
## **Example :** 
```
acme__challengeRequest
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/06/2018, 22:26:42 - 1.00.00
