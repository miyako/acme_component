﻿# **Method :** acme_certDateValidyInSeconds
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the number of seconds remaining before a certificate expires
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | diff | LONGINT | number of seconds remaining for validity (valid if >=0) | 
| $1 | IN | cert | TEXT | cert in PEM format | 
| $2 | IN | nbDaysMargin | LONGINT | bDaysMargin (optional, default 0) | 

## **Notes :** 

## **Example :** 
```

      
       C_LONGINT($vl_validitySecs;$vl_days)
       $vl_validitySecs:=acme_certDateValidyInSeconds ($vt_cert)
       C_TIME($vh_time)
       $vl_days:=$vl_validitySecs\86400
       $vh_time:=time($vl_validitySecs%86400)
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/01/2019, 23:30:00 - 1.00.00
