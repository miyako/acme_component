﻿# **Method :** acme__keyFileProtect
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function disables read permissions to "group" and "others"
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | privateKeyPath | TEXT | private key path | 

## **Notes :** 

       it is important to secure and restrict the access to the private key
       OS X only,
## **Example :** 
```
acme__keyFileProtect ("file") <=> chmod 600 'file'
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 03/07/2018, 08:49:59 - 1.0
