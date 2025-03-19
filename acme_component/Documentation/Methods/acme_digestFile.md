﻿# **Method :** acme_digestFile
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns to generate a digest on a file using the component openssl library
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | digest | TEXT | digest (in hex fomrat e.g. "d0ccab71ae6185d36f0705b88d4ac681") | 
| $1 | IN | filepath | TEXT | file path | 
| $2 | IN | digestAlg | TEXT | digest algorithm (optional, default "md5") | 

## **Notes :** 

       can compress large files without having to load them in a blob
      
       uses openssl
      
       digestAlg :
        - gost-mac       to use the gost-mac message digest algorithm
        - md_gost94      to use the md_gost94 message digest algorithm
        - md4            to use the md4 message digest algorithm
        - md5            to use the md5 message digest algorithm
        - mdc2           to use the mdc2 message digest algorithm
        - ripemd160      to use the ripemd160 message digest algorithm
        - sha            to use the sha message digest algorithm
        - sha1           to use the sha1 message digest algorithm
        - sha224         to use the sha224 message digest algorithm
        - sha256         to use the sha256 message digest algorithm
        - sha384         to use the sha384 message digest algorithm
        - sha512         to use the sha512 message digest algorithm
        - whirlpool      to use the whirlpool message digest algorithm
## **Example :** 
```
acme_digestFile
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 

        CREATION : Bruno LEGAY (BLE) - 28/02/2019, 11:51:57 - 0.90.02
