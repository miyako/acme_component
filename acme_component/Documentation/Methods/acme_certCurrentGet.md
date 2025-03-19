﻿# **Method :** acme_certCurrentGet
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function loads the current certificate and rsa private key (optional)
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | OUT | certPtr | POINTER | certificate pem text or blob pointer (modified) | 
| $2 | OUT | keyPtr | POINTER | key pem text or blob pointer (optional modified) | 

## **Notes :** 

       on standalone or server, certificates and rsa private key files are in the same folder as the structure file
       on 4D Client, certificates and rsa private key files are next to the 4D executable file
## **Example :** 
```

      
      C_BOOLEAN($vb_renew)
      $vb_renew:=False
      
        // Load current certificates (and private key)
       C_TEXT($vt_cert)
       If(acme_certCurrentGet (->$vt_cert))
      
         C_LONGINT($vl_nbDays;$vl_secs)
         $vl_nbDays:=30
         $vl_secs:=$vl_nbDays*86400  // 86400 = 24 x 60 x 60
      
          // check if the certificate will expire
         $vb_renew:=acme_certCheckEnd ($vt_cert;$vl_secs)
         If($vb_renew)  // do some logs here...
      
         End if
      
       Else  // no certificates
         $vb_renew:=True
       End if
      
       If($vb_renew)
         cert_renew
       End if
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 23/01/2019, 22:09:21 - 1.00.00
