﻿# **Method :** acme_webServerStart
## **Scope :** public
## **Treadsafe :** capable ✅ 
## **Description :** 
This method will restart the web server
## **Parameters :** 
## **Notes :** 
if the web server is not running, it will be started
       If no certificates are installed, only http server starts
       If certificates are installed, http+https server start and HSTS is activated automatically
## **Example :** 
```

      
       acme_webServerStart
```
## **Version :** 
1.00.00
## **Author :** 
Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
## **History :** 
 
        CREATION : Bruno LEGAY (BLE) - 06/09/2018, 19:12:43 - 1.0
