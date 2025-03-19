﻿# **Method :** acme_certActiveDirPathGet
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the active certificates dir path
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | activeCertificateDirPath | TEXT | active certificates dir path | 

## **Notes :** 

       on standalone or server, (binary mode) certificates and rsa private key files are in the same folder as the structure file (e.g. "myApp.4DB", "myApp.4DC")
       on standalone or server, (project mode) certificates and rsa private key files are in the same folder as the "Project" folder/dir
       on 4D Client, certificates and rsa private key files are next to the 4D executable file
## **Example :** 
```
acme_certActiveDirPathGet
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 09/10/2018, 08:47:14 - 1.0
