﻿# **Method :** acme_certificateGet
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function retrives a certificate from a certificate url
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | url | TEXT | certificate url | 
| $2 | OUT | certificatePtr | POINTER | PEM formatted certificate blob or text pointer (modified) | 

## **Notes :** 

## **Example :** 
```
acme_certificateGet
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 24/06/2018, 08:55:53 - 1.00.00
