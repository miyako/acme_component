﻿# **Method :** acme_certificateAsTextInstall
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function dumps the certificates in the 4D cert location. It will also restart the 4D http/Web server
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | keyPem | TEXT | key in pem format (without password protection) | 
| $2 | IN | certPem | TEXT | certificate in pem format | 

## **Notes :** 
If the Web Server is not runnning, it will be started
## **Example :** 
```
acme_certificateAsTextInstall
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/01/2019, 19:24:53 - 1.00.00
