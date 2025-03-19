﻿# **Method :** acme_READ_ME
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
documentation
## **Parameters :** 
## **Notes :** 

       https://tools.ietf.org/html/rfc8555
       https://github.com/ietf-wg-acme/acme/blob/master/draft-ietf-acme-acme.md
          +-----------------------+--------------------------+----------------+
          | Action                | Request                  | Response       |
          +-----------------------+--------------------------+----------------+
          | Get directory         | GET  directory           | 200            |
          |                       |                          |                |
          | Get nonce             | HEAD newNonce            | 200            |
          |                       |                          |                |
          | Create account        | POST newAccount          | 201 -> account |
          |                       |                          |                |
          | Submit order          | POST newOrder            | 201 -> order   |
          |                       |                          |                |
          | Fetch challenges      | GET  order               | 200            |
          |                       | authorizations           |                |
          |                       |                          |                |
          | Respond to challenges | POST challenge urls      | 200            |
          |                       |                          |                |
          | Poll for status       | GET  order               | 200            |
          |                       |                          |                |
          | Finalize order        | POST order finalize      | 200            |
          |                       |                          |                |
          | Poll for status       | GET  order               | 200            |
          |                       |                          |                |
          | Download certificate  | GET  order certificate   | 200            |
          +-----------------------+--------------------------+----------------+
## **Example :** 
```
acme_READ_ME
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 08:44:58 - 1.00.00
