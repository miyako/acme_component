﻿# **Method :** acme__httpHeaderGetValForKey
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns a value for a key given a pair of http header key/value text arrays
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | value | TEXT | header value | 
| $1 | IN | headerArrayKeyPtr | POINTER | header text array key pointer (not modified) | 
| $2 | IN | headerArrayValuePtr | POINTER | header text array value pointer (not modified) | 
| $2 | IN | contentType | TEXT | header key | 

## **Notes :** 

## **Example :** 
```
acme__httpHeaderGetValForKey
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 07:40:16 - 1.00.00
