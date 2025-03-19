﻿# **Method :** acme_dateParse
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function converts a certificate date and time into a timestamp
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | timestamp | TEXT | timestamp | 
| $1 | IN | certDate | TEXT | certificate date | 

## **Notes :** 

## **Example :** 
```
acme_dateParse("Jan 23 19:15:40 2019 GMT\n") => "20190123T191540Z"
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/01/2019, 22:58:41 - 1.00.00
