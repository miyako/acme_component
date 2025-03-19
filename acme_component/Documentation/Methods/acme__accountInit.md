﻿# **Method :** acme__accountInit
## **Scope :** private
## **Treadsafe :** capable ✅ 
## **Description :** 
This function returns the account key dir the a given serivce (based from directory url) and from the working dir
## **Parameters :** 
| Parameter | Direction | Name | Type | Ddescription | 
|:----:|:----:|:----|:----|:----| 
| $0 | OUT | accountKeyDir | TEXT | account key dir "<$vt_workingDir>letsencrypt:acme-v02.api.letsencrypt.org:_account:" | 
| $1 | IN | delete | BOOLEAN | if TRUE will delete the "key.pem" and "key.pub" files (optional, default FALSE) | 

## **Notes :** 

      
       "letsencrypt"
         +--  "acme-v02.api.letsencrypt.org" (or "acme-staging-v02.api.letsencrypt.org")
           +--  "_account"
             +--  "account.json" (account data returned by the http POST request body to letsencrypt)
             +--  "httpRequest.json" (contains the http request /response info of the account creation, including the "Location" reponse header (e.g. "https://acme-v02.api.letsencrypt.org/acme/acct/<accountId>")
             +--  "key.pub" (account 2048 bits rsa public key file in PEM / text format, starting with "-----BEGIN RSA PUBLIC KEY-----")
             +--  "key.pem" (accounr 2048 bits rsa private key file in PEM / text format, starting with "-----BEGIN RSA PRIVATE KEY-----")
           +--  "_orders"
             +--  "<orderId>"
               +--  "<yyyymmddhhmiss>_httpRequest.json" (contains the http request / response info of the order creation)
               +--  "<yyyymmddhhmiss>_httpResponse.json" (same as "<orderId>.json")
               +--  "<orderId>.json"  (response to the order http request, including the "Location" reponse header (e.g. "https://acme-staging-v02.api.letsencrypt.org/acme/order/<accountId>/<orderId>")
               +--  "cert.pem" (certificate in PEM format, starting with "-----BEGIN CERTIFICATE-----")
               +--  "csr.der" (certificate request in DER / binary format)
               +--  "csr.pem" (certificate request in PEM / text format, stating with "-----BEGIN CERTIFICATE REQUEST-----")
               +--  "key.pem" (certificate 2048 bits rsa private key in PEM / text format, starting with "-----BEGIN RSA PRIVATE KEY-----")
               +--  "key.pub" (certificate 2048 bits rsa public key in PEM / text format, starting with "-----BEGIN PUBLIC KEY-----")
## **Example :** 
```
acme__accountInit => "Macintosh HD:Users:ble:Documents:Projets:myApp:letsencrypt:_account:acme-staging-v02.api.letsencrypt.org:"
```
## **Version :** 
1.00.00
## **Author :** 

## **History :** 
 
       CREATION : Bruno LEGAY (BLE) - 23/06/2018, 13:18:26 - 1.00.00
