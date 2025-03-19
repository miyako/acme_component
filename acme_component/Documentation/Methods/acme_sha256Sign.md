﻿# **Method :** acme_sha256Sign
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method/function returns
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | signatureBase64 | TEXT | signature base64 encoded | 
| $1 | IN | blobPtr | POINTER | blob pointer (not modified) | 
| $2 | IN | privateKeyPem | TEXT | private key pem format data | 

## **Notes :** 

## **Example :** 
```

      
        C_BLOB($vx_blobToSign)
        TEXT TO BLOB("hello world";$vx_blobToSign;UTF8 text without length)
      
        C_TEXT($vt_pem)
        $vt_pem:=acme_pkcs12FileToPem ($vt_p12Path;$vt_p12Password)
      
        C_OBJECT($vo_certificates)
        $vo_certificates:=acme_pemFormatChainToObject ($vt_pem)
      
        C_TEXT($vt_signatureBase64)
        $vt_signatureBase64:=acme_sha256Sign (->$vx_blobToSign;$vo_certificates.pkey)
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 

        CREATION : Bruno LEGAY (BLE) - 14/12/2020, 10:18:03 - 1.00.03
