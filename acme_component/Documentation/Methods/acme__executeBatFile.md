﻿# **Method :** acme__executeBatFile
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function executes a batch file on Windows
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if | 
| $1 | IN | batfile | TEXT | bat file path | 
| $2 | OUT | outPtr | POINTER | out text pointer (modified) | 
| $3 | OUT | errPtr | POINTER | err text pointer (modified) | 

## **Notes :** 

## **Example :** 
```
acme__executeBatFile
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 25/04/2019, 13:33:13 - 0.90.05
