﻿# **Method :** acme__httpRequestHeaderCommon
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method sets the default http request headers when communicating with acme server
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | headerArrayKeyPtr | POINTER | header text array key pointer (modified) | 
| $2 | IN | headerArrayValuePtr | POINTER | header text array value pointer (modified) | 
| $2 | IN | contentType | TEXT | "Content-Type" value (optional, e.g. "application/json") | 

## **Notes :** 

## **Example :** 
```
acme__headerCommon
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 06:18:14 - 1.00.00
