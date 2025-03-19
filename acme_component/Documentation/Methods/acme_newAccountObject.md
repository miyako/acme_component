﻿# **Method :** acme_newAccountObject
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function inializes a new account object
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | newAccountObject | OBJET | new account object | 
| $1 | IN | contactListPtr | POINTER | text or text array containing emails of contacts (e.g. "john@example.com") | 
| $2 | IN | termsOfServiceAgreed | BOOLEAN | set to TRUE to say that the "terms of service are agreed", set to FALSE otherwise | 

## **Notes :** 

## **Example :** 
```

      
      ARRAY TEXT($tt_contacts;2)
      $tt_contacts{1}:="blegay@example.com"
      $tt_contacts{2}:="jlaclavere@example.com"
      
      $vo_payload:=acme_newAccountObject (->$tt_contacts;True)
      ARRAY TEXT($tt_contacts;0)
      acme_newAccount ($vo_payload)
      
       // OR
      
      C_TEXT($vt_contact)
      $vt_contact:="blegay@example.com"
      $vo_payload:=acme_newAccountObject (->$tt_contacts;True)
      acme_newAccount ($vo_payload)
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 03/07/2018, 18:43:01 - 1.0
