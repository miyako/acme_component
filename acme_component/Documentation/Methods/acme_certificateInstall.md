﻿# **Method :** acme_certificateInstall
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function will install the private key and certificate files in the active directory
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if OK, FALSE otherwise | 
| $1 | IN | privateKeyPath | TEXT | private key path | 
| $2 | IN | certPath | TEXT | certificate path | 
| $3 | IN | certDir | TEXT | 4D cert dir (optional, default acme_certActiveDirPathGet) | 

## **Notes :** 

## **Example :** 
```
acme_certificateInstall
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 03/07/2018, 09:03:04 - 1.0
