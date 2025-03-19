﻿# **Method :** acme_csrSubjectAutoFromDomains
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns a csr subject object from a list of domains
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | csrSubjectObject | OBJECT | csr subject object | 
| $1 | IN | domainListPtr | POINTER | domain list text or text array pointer (not modified) | 

## **Notes :** 
the first item in the list of domains will be used a "CN" (common name)
## **Example :** 
```
acme_csrSubjectAutoFromDomains
      
       // subject for "distinguished_name" 
       
       C_OBJECT($vo_subject)
       OB SET($vo_subject;"CN";$tt_domains{1})
      
       // equivalent to
      
       C_OBJECT($vo_subject)
       $vo_subject:=acme_csrSubjectAutoFromDomains(->$tt_domains)
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 05/03/2020, 16:07:08 - 0.90.15
