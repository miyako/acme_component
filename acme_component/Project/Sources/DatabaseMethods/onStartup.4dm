If (False:C215)
	
	  //If (Not(Is compiled mode))
	
	  //acme__logInit 
	
	  //acme__xdocInit 
	
	  //End if 
	
	  //  // set staging environment (for tests only)
	  //acme_directoryUrlSet ("https://acme-staging-v02.api.letsencrypt.org/directory")
	
	  //cert_accountInit
	
	  //acme_webServerStart 
	
	  //cert_renewAuto
	
	
	
Else 
	If (Not:C34(Is compiled mode:C492))
		
		acme__logInit 
		
		acme__xdocInit 
		
		acme__init 
		
		
		  // défini l'environnement "staging" pour les tests
		If (True:C214)
			acme_directoryUrlSet ("https://acme-staging-v02.api.letsencrypt.org/directory")
		End if 
		
		C_TEXT:C284($vt_baseDir;$vt_baseDirParent)
		$vt_baseDir:=Get 4D folder:C485(Database folder:K5:14;*)
		$vt_baseDirParent:=FS_pathToParent ($vt_baseDir)
		
		acme_workingDirSet ($vt_baseDirParent)
		
		If (True:C214)
			
			  // restrict the cipher list
			  // note : this cipher list will also apply to 4D client / server communication if ssl/tls option is activated
			C_TEXT:C284($vt_cipherList)
			$vt_cipherList:=\
				"ECDHE-RSA-AES128-GCM-SHA256:"+\
				"ECDHE-RSA-AES256-GCM-SHA384:"+\
				"ECDHE-RSA-CHACHA20-POLY1305:"+\
				"DHE-RSA-AES128-GCM-SHA256:"+\
				"DHE-RSA-AES256-GCM-SHA384"
			
			acme_sslCipherListSet ($vt_cipherList)
			
			
			  // start the web server
			acme_webServerStart 
			
			  // "ECDHE-ECDSA-AES128-GCM-SHA256:"+\
																							// "ECDHE-RSA-AES128-GCM-SHA256:"+\
																							// "ECDHE-ECDSA-AES256-GCM-SHA384:"+\
																							// "ECDHE-RSA-AES256-GCM-SHA384:"+\
																							// "ECDHE-ECDSA-CHACHA20-POLY1305:"+\
																							// "ECDHE-RSA-CHACHA20-POLY1305:"+\
																							// "DHE-RSA-AES128-GCM-SHA256:"+\
																							// "DHE-RSA-AES256-GCM-SHA384"
			
			
			  //   TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (0xc02f)ECDH secp256r1 (eq. 3072 bits RSA)FS 128
			  //   TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (0xc030)ECDH secp256r1 (eq. 3072 bits RSA)FS 256
			  //   TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 (0x9e)DH 2048 bitsFS 128
			  //   TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 (0x9f)DH 2048 bitsFS 256
			  //   TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 (0xc027)ECDH secp256r1 (eq. 3072 bits RSA)FSWEAK 128
			  //   TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA (0xc013)ECDH secp256r1 (eq. 3072 bits RSA)FSWEAK 128
			  //   TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 (0xc028)ECDH secp256r1 (eq. 3072 bits RSA)FSWEAK 256
			  //   TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (0xc014)ECDH secp256r1 (eq. 3072 bits RSA)FSWEAK 256
			  //   TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 (0x67)DH 2048 bitsFSWEAK 128
			  //   TLS_DHE_RSA_WITH_AES_128_CBC_SHA (0x33)DH 2048 bitsFSWEAK 128
			  //   TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 (0x6b)DH 2048 bitsFSWEAK 256
			  //   TLS_DHE_RSA_WITH_AES_256_CBC_SHA (0x39)DH 2048 bitsFSWEAK 256
			  //   TLS_RSA_WITH_AES_128_GCM_SHA256 (0x9c)WEAK 128
			  //   TLS_RSA_WITH_AES_256_GCM_SHA384 (0x9d)WEAK 256
			  //   TLS_DHE_RSA_WITH_AES_128_CCM_8 (0xc0a2)DH 2048 bitsFS 128
			  //   TLS_DHE_RSA_WITH_AES_128_CCM (0xc09e)DH 2048 bitsFS 128
			  //   TLS_RSA_WITH_AES_128_CCM_8 (0xc0a0)WEAK 128
			  //   TLS_RSA_WITH_AES_128_CCM (0xc09c)WEAK 128
			  //   TLS_RSA_WITH_AES_128_CBC_SHA256 (0x3c)WEAK 128
			  //   TLS_RSA_WITH_AES_128_CBC_SHA (0x2f)WEAK 128
			  //   TLS_DHE_RSA_WITH_AES_256_CCM_8 (0xc0a3)DH 2048 bitsFS 256
			  //   TLS_DHE_RSA_WITH_AES_256_CCM (0xc09f)DH 2048 bitsFS 256
			  //   TLS_RSA_WITH_AES_256_CCM_8 (0xc0a1)WEAK 256
			  //   TLS_RSA_WITH_AES_256_CCM (0xc09d)WEAK 256
			  //   TLS_RSA_WITH_AES_256_CBC_SHA256 (0x3d)WEAK 256
			  //   TLS_RSA_WITH_AES_256_CBC_SHA (0x35)WEAK 256
			  //   TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 (0xcca8)ECDH secp256r1 (eq. 3072 bits RSA)FS 256
			  //   TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256 (0xccaa)DH 2048 bitsFS 256
			  //   TLS_ECDHE_RSA_WITH_ARIA_256_GCM_SHA384 (0xc061)ECDH secp256r1 (eq. 3072 bits RSA)FS 256
			  //   TLS_DHE_RSA_WITH_ARIA_256_GCM_SHA384 (0xc053)DH 2048 bitsFS 256
			  //   TLS_ECDHE_RSA_WITH_ARIA_128_GCM_SHA256 (0xc060)ECDH secp256r1 (eq. 3072 bits RSA)FS 128
			  //   TLS_DHE_RSA_WITH_ARIA_128_GCM_SHA256 (0xc052)DH 2048 bitsFS 128
			  //   TLS_ECDHE_RSA_WITH_CAMELLIA_256_CBC_SHA384 (0xc077)ECDH secp256r1 (eq. 3072 bits RSA)FSWEAK 256
			  //   TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256 (0xc4)DH 2048 bitsFSWEAK 256
			  //   TLS_ECDHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 (0xc076)ECDH secp256r1 (eq. 3072 bits RSA)FSWEAK 128
			  //   TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256 (0xbe)DH 2048 bitsFSWEAK 128
			  //   TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA (0x88)DH 2048 bitsFSWEAK 256
			  //   TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA (0x45)DH 2048 bitsFSWEAK 128
			  //   TLS_RSA_WITH_ARIA_256_GCM_SHA384 (0xc051)WEAK 256
			  //   TLS_RSA_WITH_ARIA_128_GCM_SHA256 (0xc050)WEAK 128
			  //   TLS_RSA_WITH_CAMELLIA_256_CBC_SHA256 (0xc0)WEAK 256
			  //   TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256 (0xba)WEAK 128
			  //   TLS_RSA_WITH_CAMELLIA_256_CBC_SHA (0x84)WEAK 256
			  //   TLS_RSA_WITH_CAMELLIA_128_CBC_SHA (0x41)WEAK 128
			
			
		End if 
		
	End if 
	
	
End if 