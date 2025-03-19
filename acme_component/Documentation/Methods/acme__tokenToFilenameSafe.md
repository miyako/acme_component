﻿# **Method :** acme__tokenToFilenameSafe
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns a file name for a token
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | filename | TEXT | filename | 
| $1 | IN | token | TEXT | token | 

## **Notes :** 

       in Linux, the filenames are case sensitive
       on OS X and windows, files "abc.txt" = "ABC.txt"
       so there is a slight risk that "IFYoEgcXKmHJOKpEG1S3kwfZPOksIKQbs4ZHU0yEeSQ" overides/collides with "iFYoEgcXKmHJOKpEG1S3kwfZPOksIKQbs4ZHU0yEeSQ"
       we could UTL_base64UrlSafeDecode the token and calculate a md5 on this to reduce collision risks
## **Example :** 
```

        acme__tokenToFilenameSafe ("IFYoEgcXKmHJOKpEG1S3kwfZPOksIKQbs4ZHU0yEeSQ") => "IFYoEgcXKmHJOKpEG1S3kwfZPOksIKQbs4ZHU0yEeSQ-11bd9a9e7b8b400feac82575eca67ce2.txt"
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 25/06/2018, 21:12:10 - 1.0
