﻿# **Method :** acme__openSslCmd
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function runs all openssl command
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if ok, FALSE otherwise | 
| $1 | IN | args | TEXT | openssl args | 
| $2 | IN | inPtr | POINTER | input stream text of blob pointer (not modified) | 
| $3 | OUT | outPtr | POINTER | output stream text of blob pointer (modified) | 
| $4 | OUT | errPtr | POINTER | error stream text of blob pointer (modified) | 

## **Notes :** 

         genrsa : generating rsa key pairs
         rsa : extract modulus and publicExponent from a rsa private key
         x509 : read certificate, check end date
         req : create a csr (allowing to have SAN/alt_names)
         dgst : sign using sha256 and a private key, do sha256 digest
         version : get version of openssl
         pkcs12 : extract certificate from p12 file
## **Example :** 
```

        C_TEXT($vt_cmd;$vt_in;$vt_out;$vt_err)
        $vt_cmd:="x509 -noout -text -inform PEM"
        $vt_in:=Document to text("cert.pem";"us-ascii";Document with LF)
        If (acme_opensslCmd ($vt_cmd;->$vt_in;->$vt_out;->$vt_err))
          ALERT($vt_out)
        End if
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 18:36:29 - 1.00.00
