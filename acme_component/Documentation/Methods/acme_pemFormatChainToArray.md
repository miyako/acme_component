﻿# **Method :** acme_pemFormatChainToArray
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This method parse a pem data (a certificate chain for instance) into a pem array
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $1 | IN | pem | TEXT | pem data | 
| $2 | OUT | pemDataArrPtr | POINTER | pem type text array pointer (modified) | 
| $3 | OUT | pemTypeArrPtr | POINTER | pem type text array pointer (modified) | 

## **Notes :** 

         # define PEM_STRING_X509_OLD     "X509 CERTIFICATE"
         # define PEM_STRING_X509         "CERTIFICATE"
         # define PEM_STRING_X509_TRUSTED "TRUSTED CERTIFICATE"
         # define PEM_STRING_X509_REQ_OLD "NEW CERTIFICATE REQUEST"
         # define PEM_STRING_X509_REQ     "CERTIFICATE REQUEST"
         # define PEM_STRING_X509_CRL     "X509 CRL"
         # define PEM_STRING_EVP_PKEY     "ANY PRIVATE KEY"
         # define PEM_STRING_PUBLIC       "PUBLIC KEY"
         # define PEM_STRING_RSA          "RSA PRIVATE KEY"
         # define PEM_STRING_RSA_PUBLIC   "RSA PUBLIC KEY"
         # define PEM_STRING_DSA          "DSA PRIVATE KEY"
         # define PEM_STRING_DSA_PUBLIC   "DSA PUBLIC KEY"
         # define PEM_STRING_PKCS7        "PKCS7"
         # define PEM_STRING_PKCS7_SIGNED "PKCS #7 SIGNED DATA"
         # define PEM_STRING_PKCS8        "ENCRYPTED PRIVATE KEY"
         # define PEM_STRING_PKCS8INF     "PRIVATE KEY"
         # define PEM_STRING_DHPARAMS     "DH PARAMETERS"
         # define PEM_STRING_DHXPARAMS    "X9.42 DH PARAMETERS"
         # define PEM_STRING_SSL_SESSION  "SSL SESSION PARAMETERS"
         # define PEM_STRING_DSAPARAMS    "DSA PARAMETERS"
         # define PEM_STRING_ECDSA_PUBLIC "ECDSA PUBLIC KEY"
         # define PEM_STRING_ECPARAMETERS "EC PARAMETERS"
         # define PEM_STRING_ECPRIVATEKEY "EC PRIVATE KEY"
         # define PEM_STRING_PARAMETERS   "PARAMETERS"
         # define PEM_STRING_CMS          "CMS"
## **Example :** 
```
acme_pemFormatChainToArray
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting - 2008
## **History :** 
 CREATION : Bruno LEGAY (BLE) - 13/02/2020, 18:37:10 - v1.00.00
