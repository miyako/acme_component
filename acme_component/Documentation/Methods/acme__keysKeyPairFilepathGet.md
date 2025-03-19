﻿# **Method :** acme__keysKeyPairFilepathGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the path to the keyfile
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | keyPath | TEXT | key file path | 
| $1 | IN | keyType | TEXT | key type "private" or "public" | 
| $2 | IN | certDir | LONGINT | keypair dir (optional, default value : host db home dir) | 

## **Notes :** 

## **Example :** 
```
acme__keysKeyPairFilepathGet
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 21:58:46 - 1.00.00
