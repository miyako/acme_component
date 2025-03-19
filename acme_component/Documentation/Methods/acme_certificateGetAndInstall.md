﻿# **Method :** acme_certificateGetAndInstall
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function retrieves the certificate (from url), installs it and restarts 4D Web server
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | certificateUrl | TEXT | url | 
| $2 | IN | orderDir | TEXT | order directory | 

## **Notes :** 

## **Example :** 
```
acme_certificateGetAndInstall
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 09/10/2018, 08:41:27 - 1.0
