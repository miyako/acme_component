﻿# **Method :** acme__execbitForce
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method sets the permissions (execute bit) on a os x binary (chmod 755)
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | cmdPath | TEXT | executable path (posix, can be within '' on os x) | 

## **Notes :** 

       with 4D, on a client, the resources are copied from server and are sometimes losing the unix permissions (and the execute permission)
       does nothing on Windows
## **Example :** 
```
acme__execbitForce
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting - 2008
## **History :** 
 CREATION : Bruno LEGAY (BLE) - 30/06/2018, 09:06:47 - v1.00.00
