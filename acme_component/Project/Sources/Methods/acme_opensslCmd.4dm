//%attributes = {"invisible":false,"shared":true,"preemptive":"capable","executedOnServer":false,"publishedSql":false,"publishedWsdl":false,"publishedSoap":false,"publishedWeb":false,"published4DMobile":{"scope":"none"}}
  //================================================================================
  //@xdoc-start : en
  //@name : acme__openSslCmd
  //@scope : public
  //@deprecated : no
  //@description : This function runs all openssl command
  //@parameter[0-OUT-ok-BOOLEAN] : TRUE if ok, FALSE otherwise
  //@parameter[1-IN-args-TEXT] : openssl args
  //@parameter[2-IN-inPtr-POINTER] : input stream text of blob pointer (not modified)
  //@parameter[3-OUT-outPtr-POINTER] : output stream text of blob pointer (modified)
  //@parameter[4-OUT-errPtr-POINTER] : error stream text of blob pointer (modified)
  //@notes : 
  //   genrsa : generating rsa key pairs
  //   rsa : extract modulus and publicExponent from a rsa private key
  //   x509 : read certificate, check end date
  //   req : create a csr (allowing to have SAN/alt_names)
  //   dgst : sign using sha256 and a private key, do sha256 digest
  //   version : get version of openssl
  //   pkcs12 : extract certificate from p12 file
  //@example : 
  //  C_TEXT($vt_cmd;$vt_in;$vt_out;$vt_err)
  //  $vt_cmd:="x509 -noout -text -inform PEM"
  //  $vt_in:=Document to text("cert.pem";"us-ascii";Document with LF)
  //  If (acme_opensslCmd ($vt_cmd;->$vt_in;->$vt_out;->$vt_err))
  //    ALERT($vt_out)
  //  End if 
  //@see : 
  //@version : 1.00.00
  //@author : 
  //@history : 
  // CREATION : Bruno LEGAY (BLE) - 23/06/2018, 18:36:29 - 1.00.00
  //@xdoc-end
  //================================================================================

C_BOOLEAN:C305($0;$vb_ok)
C_TEXT:C284($1;$vt_args)
C_POINTER:C301($2;$vp_inPtr)
C_POINTER:C301($3;$vp_outPtr)
C_POINTER:C301($4;$vp_errPtr)
  //C_BOOLÉEN($5;$vb_checkErrorLevelOnWindows)

ASSERT:C1129(Count parameters:C259>3;"requires 4 parameters")
ASSERT:C1129(Length:C16($1)>0;"$1 openssl args cannot be empty")
ASSERT:C1129((Type:C295($2->)=Is text:K8:3) | (Type:C295($2->)=Is BLOB:K8:12);"$2 should be a text or blob pointer")
ASSERT:C1129((Type:C295($3->)=Is text:K8:3) | (Type:C295($3->)=Is BLOB:K8:12);"$3 should be a text or blob pointer")
ASSERT:C1129((Type:C295($4->)=Is text:K8:3) | (Type:C295($4->)=Is BLOB:K8:12);"$4 should be a text or blob pointer")

$vb_ok:=False:C215
$vt_args:=$1
$vp_inPtr:=$2
$vp_outPtr:=$3
$vp_errPtr:=$4

acme__init 
acme__initG 

C_TEXT:C284($vt_openSslPath)
$vt_openSslPath:=acme__opensslPathGet 

acme__execbitForce ($vt_openSslPath)

C_TEXT:C284($vt_openSslCmd)
$vt_openSslCmd:=$vt_openSslPath+" "+$vt_args

If (Is Windows:C1573)
	SET ENVIRONMENT VARIABLE:C812("_4D_OPTION_HIDE_CONSOLE";"true")  // windows only
End if 
If (False:C215)
	SET ENVIRONMENT VARIABLE:C812("_4D_OPTION_BLOCKING_EXTERNAL_PROCESS";"true")  // BLOCKING_EXTERNAL_PROCESS is "true" by default
End if 
SET ENVIRONMENT VARIABLE:C812("_4D_OPTION_CURRENT_DIRECTORY";Get 4D folder:C485(Database folder:K5:14;*))


  // timer
C_LONGINT:C283($vl_ms)
$vl_ms:=Milliseconds:C459

  //<Modif> Bruno LEGAY (BLE) (29/09/2021)
  // https://discuss.4d.com/t/lep-text-encoding/20571
If (True:C214)
	
	C_TEXT:C284($vt_lepEncoding)
	$vt_lepEncoding:="UTF-8"
	  //If (Is Windows)
	  //$vt_lepEncoding:="UTF-16LE"
	  //Else 
	  //$vt_lepEncoding:="UTF-8"
	  //End if 
	
	C_BLOB:C604($vx_in;$vx_out;$vx_err)
	SET BLOB SIZE:C606($vx_in;0)
	SET BLOB SIZE:C606($vx_out;0)
	SET BLOB SIZE:C606($vx_err;0)
	
	If (Type:C295($vp_inPtr->)=Is text:K8:3)
		CONVERT FROM TEXT:C1011($vp_inPtr->;$vt_lepEncoding;$vx_in)
	Else 
		$vx_in:=$vp_inPtr->
	End if 
	
	  //If (Type($vp_outPtr->)=Is text)
	  //CONVERT FROM TEXT($vp_outPtr->;$vt_lepEncoding;$vx_out)
	  //Else 
	  //$vx_out:=$vp_outPtr->
	  //End if 
	
	  //If (Type($vp_errPtr->)=Is text)
	  //CONVERT FROM TEXT($vp_errPtr->;$vt_lepEncoding;$vx_err)
	  //Else
	  //$vx_err:=$vp_errPtr->
	  //End if 
	
	LAUNCH EXTERNAL PROCESS:C811($vt_openSslCmd;$vx_in;$vx_out;$vx_err)
	$vb_ok:=(ok=1)
	
	  //If (Type($vp_inPtr->)=Is text)
	  //$vp_inPtr->:=Convert to text($vx_in;$vt_lepEncoding)
	  //Else 
	  //$vp_inPtr->:=$vx_in
	  //End if 
	
	If (Type:C295($vp_outPtr->)=Is text:K8:3)
		$vp_outPtr->:=Convert to text:C1012($vx_out;$vt_lepEncoding)
	Else 
		$vp_outPtr->:=$vx_out
	End if 
	
	If (Type:C295($vp_errPtr->)=Is text:K8:3)
		$vp_errPtr->:=Convert to text:C1012($vx_err;$vt_lepEncoding)
	Else 
		$vp_errPtr->:=$vx_err
	End if 
	
	SET BLOB SIZE:C606($vx_in;0)
	SET BLOB SIZE:C606($vx_out;0)
	SET BLOB SIZE:C606($vx_err;0)
	
Else 
	
	LAUNCH EXTERNAL PROCESS:C811($vt_openSslCmd;$vp_inPtr->;$vp_outPtr->;$vp_errPtr->)
	$vb_ok:=(ok=1)
	
End if 
  //<Modif>


  // timer
$vl_ms:=UTL_durationDifference ($vl_ms;Milliseconds:C459)

C_TEXT:C284($vt_inDebug;$vt_outDebug;$vt_errDebug)
$vt_inDebug:=acme__varPtrDebug ($vp_inPtr)
$vt_outDebug:=acme__varPtrDebug ($vp_outPtr)
$vt_errDebug:=acme__varPtrDebug ($vp_errPtr)

  //<Modif> Bruno LEGAY (BLE) (22/07/2021)
  // on windows 10, 4D v18 (64 bits), with OpenSSL 1.0.2o  27 Mar 2018, there are some spurious error text returned

  // 2021-07-22T05:47:06.513Z - acme - 04 - acme__openSslCmd ==> cmd "C:\Users\bruno\myApp\Components\acme_component.4dbase\Resources\openssl\win64\openssl.exe" genrsa 2048", in : "", out : "1675 byte(s)", err : "Generating RSA private key, 2048 bit long modulus
  // .+++
  // ...................................................+++
  // e is 65537 (0x10001)
  // ", duration : 0,591s success. [OK]

  // 2021-07-22T05:47:09.855Z - acme - 04 - acme__openSslCmd ==> cmd "C:\Users\bruno\myApp\Components\acme_component.4dbase\Resources\openssl\win64\openssl.exe" rsa -pubout", in : "1675 byte(s)", out : "451 byte(s)", err : "writing RSA key
  // ", duration : 0,289s success. [OK]

  // 2021-07-22T05:48:02.060Z - acme - 04 - acme__openSslCmd ==> cmd ""C:\Users\bruno\myApp\Components\acme_component.4dbase\Resources\openssl\win64\openssl.exe" req 
  // -new 
  // -key "C:\Users\bruno\myApp\letsencrypt\org.letsencrypt.api.acme-v02\_orders\11332917651\key.pem" 
  // -sha256 
  // -outform DER 
  // -nodes 
  // -config "C:\Users\bruno\AppData\Local\Temp\openssl_config_442FD54E5118264BB9AFE54D814FD882.cnf"", in : "", out : "1225 byte(s)", err : "WARNING: can't open config file: /usr/local/ssl/openssl.cnf
  // ", duration : 0,496s success. [OK]

  //<Modif>

  // ASSERT(Length($vt_errDebug)=0;$vt_errDebug)


If ($vb_ok)
	acme__log (4;Current method name:C684;"cmd \""+acme__opensslCmdDebugSanitize ($vt_openSslCmd)+"\""+", in : \""+$vt_inDebug+"\""+", out : \""+$vt_outDebug+"\""+", err : \""+$vt_errDebug+"\""+", duration : "+UTL_durationMsDebug ($vl_ms)+" success. [OK]")
Else 
	acme__log (2;Current method name:C684;"cmd \""+acme__opensslCmdDebugSanitize ($vt_openSslCmd)+"\""+", in : \""+$vt_inDebug+"\""+", out : \""+$vt_outDebug+"\""+", err : \""+$vt_errDebug+"\""+", duration : "+UTL_durationMsDebug ($vl_ms)+" failed. [KO]")
End if 

$0:=$vb_ok