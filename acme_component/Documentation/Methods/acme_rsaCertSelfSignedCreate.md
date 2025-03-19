﻿# **Method :** acme_rsaCertSelfSignedCreate
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function generates a self signed certificate
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | ok | BOOLEAN | TRUE if OK, FALSE otherwise | 
| $1 | OUT | keyPtr | POINTER | key (PEM format) text or blob pointer (modified) | 
| $2 | OUT | certPtr | POINTER | cert (PEM format) text or blob pointer (modified) | 
| $3 | IN | csrObj | OBJECT | csr object (see acme_csrReqConfObjectNew) | 
| $4 | IN | validity | LONGINT | validity (number of days), optional default 365 | 
| $5 | IN | keySize | LONGINT | key size (optional, default 2048) | 

## **Notes :** 

## **Example :** 
```

      
       C_OBJET($vo_csrObj)
       OB FIXER($vo_csrObj;"CN";"www.example.com")
      
       C_OBJET($vo_csrReqConfObject)
       $vo_csrReqConfObject:=acme_csrReqConfObjectNew ($vo_csrObj)
      
       C_TEXTE($vt_key;$vt_cert)
       Si (acme_rsaCertSelfSignedCreate (->$vt_key;->$vt_cert;$vo_csrReqConfObject;3650))
         acme_certificateAsTextInstall ($vt_key;$vt_cert)
       Fin de si
      
           csr conf object ==>
      
           {
             "req": {
               "default_bits": 2048,
               "prompt": false,
               "default_md": "sha256",
               "distinguished_name": "dn"
             },
             "dn": {
               "CN": "www.example.com"
             }
           }
      
           openssl csr conf file ==>
      
           [req]
           default_bits = 2048
           prompt = no
           default_md = sha256
           distinguished_name = dn
      
           [dn]
           CN = www.example.com
      
      
       a more complex certificates (with alternative names)
      
       C_TEXTE($vt_key;$vt_cert)
      
       C_OBJET($vo_csrObj)
       OB FIXER($vo_csrObj;"C";"FR")
       OB FIXER($vo_csrObj;"L";"Paris")
       OB FIXER($vo_csrObj;"ST";"Paris (75)")
       OB FIXER($vo_csrObj;"O";"AC Consulting")
       OB FIXER($vo_csrObj;"OU";"AC Consulting")
       OB FIXER($vo_csrObj;"emailAddress";"john@example.com")
       OB FIXER($vo_csrObj;"CN";"www.example.com")
      
       // C_OBJET($vo_altNames)
       // OB FIXER($vo_altNames;"DNS.1";"api.example.com")
       // OB FIXER($vo_altNames;"DNS.2";"status.example.com")
      
       TABLEAU TEXTE($tt_altNames;0)
       AJOUTER À TABLEAU($tt_altNames;"api.example.com")
       AJOUTER À TABLEAU($tt_altNames;"status.example.com")
       $vo_altNames:=acme_csrAltnamesNew (->$tt_altNames)
       TABLEAU TEXTE($tt_altNames;0)
      
       C_OBJET($vo_csrReqConfObject)
       $vo_csrReqConfObject:=acme_csrReqConfObjectNew ($vo_csrObj;$vo_altNames)
      
       C_TEXTE($vt_key;$vt_cert)
       Si (acme_rsaCertSelfSignedCreate (->$vt_key;->$vt_cert;$vo_csrReqConfObject;3650))
         acme_certificateAsTextInstall ($vt_key;$vt_cert)
       Fin de si
      
      
           csr conf object ==>
      
           {
             "req": {
               "default_bits": 2048,
               "prompt": false,
               "default_md": "sha256",
               "req_extensions": "req_ext",
               "distinguished_name": "dn"
             },
             "dn": {
               "C": "FR",
               "L": "Paris",
               "ST": "Paris (75)",
               "O": "AC Consulting",
               "OU": "AC Consulting",
               "emailAddress": "john@example.com",
               "CN": "www.example.com"
             },
             "req_ext": {
               "subjectAltName": "@alt_names"
             },
             "alt_names": {
               "DNS.1": "api.example.com",
               "DNS.2": "status.example.com"
             }
           }
      
           openssl csr conf file ==>
      
           [req]
           default_bits = 2048
           prompt = no
           default_md = sha256
           req_extensions = req_ext
           distinguished_name = dn
      
           [dn]
           C = FR
           L = Paris
           ST = Paris (75)
           O = AC Consulting
           OU = AC Consulting
           emailAddress = john@example.com
           CN = www.example.com
      
           [req_ext]
           subjectAltName = @alt_names
      
           [alt_names]
           DNS.1 = api.example.com
           DNS.2 = status.example.com
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 

        CREATION : Bruno LEGAY (BLE) - 23/01/2019, 07:39:18 - 1.00.00
