﻿# **Method :** acme__jswKeyInfosSet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method will read the infos about the private key, or load it from a file
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | INOUT | object | OBJET | object | 
| $2 | IN | accountKeyDir | TEXT | accountKeyDir (e.g. "Macintosh HD:Users:ble:Documents:Projets:BaseRef_v15:acme_component:source:acme_component.4dbase:letsencrypt:org.letsencrypt.api.acme-staging-v02:_account:") | 

## **Notes :** 

       if the account has already been created, 
         the function will set "kid" property with a url value "https://acme-v02.api.letsencrypt.org/acme/acct/12345678" (found in the account creation "Location" header response)
       if the account has not been created (when creating an account for instance)
         the function will set a "jwk" object with "kty"="RSA", "n" = private key modulus (base 64 encoded) and "e" = private key exponent (base 64 encoded)
## **Example :** 
```
acme__jswKeyInfosSet
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 12:06:52 - 1.00.00
