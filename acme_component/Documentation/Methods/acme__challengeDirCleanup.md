﻿# **Method :** acme__challengeDirCleanup
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method cleans up old files the the challenge dir path
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | challengeDirPath | TEXT | challenge dir path | 

## **Notes :** 
deletes files which are more than 90 days old (based on file creation dates)
## **Example :** 
```
acme__challengeDirCleanup
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 13/02/2019, 23:56:55 - 0.90.01
