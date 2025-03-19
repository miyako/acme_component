﻿# **Method :** acme__opensslToText
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns text data about a private key, a csr, or certificate in PEM or DER format
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | text | TEXT | text | 
| $1 | IN | type | TEXT | source type ("rsa", "req" or "x509") | 
| $2 | IN | sourcePtr | POINTER | source pointer (private key, csr, or certificate in PEM or DER format) (not modified) | 
| $3 | IN | param | TEXT | "text", "startdate", "enddate" (optional, default "text") | 
| $4 | IN | inform | TEXT | "PEM" or "DER" (optional, default "PEM" if $2 is text, "DER" if $2 is blob) | 

## **Notes :** 

## **Example :** 
```
acme__opensslToText
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 

        CREATION : Bruno LEGAY (BLE) - 29/06/2018, 13:08:27 - 1.0
