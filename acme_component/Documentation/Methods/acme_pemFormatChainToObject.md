﻿# **Method :** acme_pemFormatChainToObject
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This method/function returns
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | certificateObj | OBJECT | certificate object | 
| $1 | IN | pemData | TEXT | p12 file content in PEM format | 

## **Notes :** 

         {"cert":"-----BEGIN CERTIFICATE-----\n
         MIIEmDCCA4CgAwIBAgI
         ...
         qAgimwTdPueU/mtExw+7z1/A==\n
         -----END CERTIFICATE-----\n",
         "pkey":"-----BEGIN PRIVATE KEY-----\n
         MIIEvgIBADA
         ...
         naBppNGFVNdI4PqmEG0Kk5Xsd\n
         -----END PRIVATE KEY-----\n",
         "extracerts":["-----BEGIN CERTIFICATE-----\n
         MIIE2TCCA\n
         ...
         SUZBQ41Tt4OTKWg\n
         -----END CERTIFICATE-----\n"]}
## **Example :** 
```
acme_pemFormatChainToObject
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 14/12/2020, 10:08:14 - 1.00.03
