﻿# **Method :** acme_sslCipherListSet
## **Scope :** public
## **Treadsafe :** incapable ⚠️ 
## **Description :** 
This method sets the cipher list for 4D openssl library and 4D http server
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | cipherList | TEXT | ParamDescription | 

## **Notes :** 

       4D default is probably "ALL:!EXPORT:!LOW:!aNULL:!eNULL:!SSLv2" (strings /Applications/dev/4D/4D_v17_0_HF43/4D\ v17.0/4D.app/Contents/Frameworks/libssl.1.0.0.dylib  | grep SSLv)
        openssl ciphers -v 'ALL:!EXPORT:!LOW:!aNULL:!eNULL:!SSLv2'
## **Example :** 
```

        // disable SSLv2, SSLv3 and TLSv1.0 (i.e. use "TLSv1.2" only)
       acme_sslCipherListSet ("HIGH:!EXPORT:!LOW:!aNULL:!eNULL:!SSLv2:!SSLv3:!TLSv1:@STRENGTH")
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting - 2008
## **History :** 
 CREATION : Bruno LEGAY (BLE) - 13/03/2019, 17:15:27 - v1.00.00
