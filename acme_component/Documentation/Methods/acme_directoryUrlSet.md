﻿# **Method :** acme_directoryUrlSet
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This method sets the ACME "directory url". This function allows to use the acme "staging" environement for tests
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | directoryUrl | TEXT | "directory url" | 

## **Notes :** 
interprocess scope
## **Example :** 
```

      
       Production :
         https://acme-v02.api.letsencrypt.org/directory
      
       Staging :
         https://acme-staging-v02.api.letsencrypt.org/directory
      
       acme_directoryUrlSet("https://acme-v02.api.letsencrypt.org/directory") // default
       acme_directoryUrlSet("https://acme-staging-v02.api.letsencrypt.org/directory")
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 12/02/2019, 19:52:02 - 1.00.00
