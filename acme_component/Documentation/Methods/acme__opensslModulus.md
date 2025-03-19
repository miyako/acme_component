﻿# **Method :** acme__opensslModulus
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function calculates a modulus for a private key, csr, or certificate in PEM or DER format
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | modulus | BLOB | modulus | 
| $1 | IN | type | TEXT | source type ("rsa", "req" or "x509") | 
| $2 | IN | sourcePtr | POINTER | source pointer (private key, csr, or certificate in PEM or DER format) (not modified) | 

## **Notes :** 

## **Example :** 
```
acme__opensslModulus
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 

        CREATION : Bruno LEGAY (BLE) - 29/06/2018, 12:37:30 - 1.0
