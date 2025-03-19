﻿# **Method :** acme__keyPairRsaGenerate
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function generates a pair of rsa private keys
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if OK, FALSE otherwise | 
| $1 | OUT | privateKeyPtr | POINTER | rsa private key (pem format) text or blob pointer (modified) | 
| $2 | OUT | publicKeyPtr | POINTER | rsa public key (pem format) text or blob pointer (modified) | 
| $3 | IN | size | LONGINT | key size (optional, default : 2048) | 

## **Notes :** 
uses openssl
## **Example :** 
```
acme__keyPairRsaGenerate
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting - 2008
## **History :** 
 CREATION : Bruno LEGAY (BLE) - 30/06/2018, 08:08:30 - v1.00.00
