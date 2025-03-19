﻿# **Method :** acme_rsakeyPairGenerate
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function creates a 2048 bits rsa key pair in a directory
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if OK, FALSE otherwise | 
| $1 | IN | dirPath | TEXT | dir path (HFS on OS X, windows path on Windows). The directory must exist. | 

## **Notes :** 
the files will be in PEM (text) format and will be named "key.pem" (private key) and "key.pub" (public key)
## **Example :** 
```
acme_rsakeyPairGenerate
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 09/10/2018, 08:29:48 - 1.0
