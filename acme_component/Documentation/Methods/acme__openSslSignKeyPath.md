﻿# **Method :** acme__openSslSignKeyPath
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns a signature for a payload with a private key
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | isgnature | BOOLEAN | signature (binary format) | 
| $1 | IN | payload | TEXT | payload to sign | 
| $2 | IN | keyPath | TEXT | private key path | 
| $3 | IN | algo | TEXT | algorithm ("SHA256") | 

## **Notes :** 

## **Example :** 
```
acme__openSslSignKeyPath
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 

       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 21:56:40 - 1.00.00
