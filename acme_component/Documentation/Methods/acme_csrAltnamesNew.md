﻿# **Method :** acme_csrAltnamesNew
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function converts a text array of "alt names" into an alt names object
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | altNamesObj | OBJECT | object | 
| $1 | IN | domainArrayPtr | POINTER | domain text array pointer (not modified) | 
| $2 | IN | startFrom | LONGINT | start from position (optional, default value : 1) | 

## **Notes :** 

## **Example :** 
```
acme_csrAltnamesNew
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/01/2019, 20:00:38 - 1.00.00
