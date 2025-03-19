﻿# **Method :** acme__opensslCsrToText
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function checks a csr output
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | csrText | TEXT | csr output | 
| $2 | IN | csrPointer | POINTER | csr pointer (if blob assumed in DER format, else PEM format) (not modified) | 

## **Notes :** 

## **Example :** 
```
acme__opensslCsrToText
      
       Certificate Request:
           Data:
               Version: 0 (0x0)
               Subject: C=FR, L=Paris, ST=Paris (75), O=AC Consulting, OU=AC Consulting/emailAddress=john@example.com, CN=staging.example.com
               Subject Public Key Info:
                   Public Key Algorithm: rsaEncryption
                   RSA Public Key: (2048 bit)
                       Modulus (2048 bit):
                           00:c2:aa:84:2d:32:05:b0:b6:68:84:9f:a0:cd:f6:
                           00:c2:aa:84:2d:32:05:b0:b6:68:84:9f:a0:cd:f6:
                            ...
                           00:c2:aa:84:2d:32:05:b0:b6:68:84:9f:a0:cd:f6:
                           4b:0d
                       Exponent: 65537 (0x10001)
               Attributes:
                   a0:00
           Signature Algorithm: sha256WithRSAEncryption
               b3:69:c2:48:77:b8:eb:1f:b1:dd:3d:52:da:22:e5:4f:9c:21:
               b3:69:c2:48:77:b8:eb:1f:b1:dd:3d:52:da:22:e5:4f:9c:21:
               ...
               b3:69:c2:48:77:b8:eb:1f:b1:dd:3d:52:da:22:e5:4f:9c:21:
               b3:69:c2:48:77:b8:eb:1f:b1:dd:3d:52:da:22:e5:4f:9c:21:
               11:4c:ba:a3
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 

        CREATION : Bruno LEGAY (BLE) - 23/06/2018, 08:21:47 - 1.00.00
