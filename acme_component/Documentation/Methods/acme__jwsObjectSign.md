﻿# **Method :** acme__jwsObjectSign
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method will sign a object with two properties "protected" and "payload" using a private key
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | objectPtr | OBJECT | jwt object | 
| $1 | IN | protected | OBJECT | protected object | 
| $2 | IN | payload | OBJECT | payload object (can be a null object) | 
| $3 | IN | privateKeyPath | TEXT | private key path | 
| $4 | IN | openSslAlgorithm | TEXT | openssl algorithm (optional, default "sha256") | 

## **Notes :** 

## **Example :** 
```
acme__jwsObjectSign
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 07:07:32 - 1.00.00
