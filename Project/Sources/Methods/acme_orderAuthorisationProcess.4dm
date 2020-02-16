//%attributes = {"shared":true}
  //================================================================================
  //@xdoc-start : en
  //@name : acme_orderAuthorisationProcess
  //@scope : public
  //@deprecated : no
  //@description : This function read the list of authorizations from and order object and prepares the "challenge" response
  //@parameter[0-OUT-ok-BOOLEAN] : TRUE if ok, FALSE otherwise
  //@parameter[1-IN-orderObject-OBJECT] : order object (not modified)
  //@notes : 
  // orderObject :
  // {
  //     "status": "pending",
  //     "expires": "2018-07-05T16:15:24Z",
  //     "identifiers": [
  //         {
  //             "type": "dns",
  //             "value": "test.example.com"
  //         },
  //         {
  //             "type": "dns",
  //             "value": "test1.example.com"
  //         },
  //         {
  //             "type": "dns",
  //             "value": "test2.example.com"
  //         },
  //         {
  //             "type": "dns",
  //             "value": "test3.example.com"
  //         }
  //     ],
  //     "authorizations": [
  //         "https://acme-staging-v02.api.letsencrypt.org/acme/authz/n...k",
  //         "https://acme-staging-v02.api.letsencrypt.org/acme/authz/x...M",
  //         "https://acme-staging-v02.api.letsencrypt.org/acme/authz/J...U",
  //         "https://acme-staging-v02.api.letsencrypt.org/acme/authz/m...o"
  //     ],
  //     "finalize": "https://acme-staging-v02.api.letsencrypt.org/acme/finalize/12345/6789"
  // }
  //
  //@example : acme_orderAuthorisationProcess
  //@see : 
  //@version : 1.00.00
  //@author : Bruno LEGAY (BLE) - Copyrights A&C Consulting 2018
  //@history : 
  //  CREATION : Bruno LEGAY (BLE) - 28/06/2018, 18:51:19 - 1.0
  //@xdoc-end
  //================================================================================

C_BOOLEAN:C305($0;$vb_ok)
C_OBJECT:C1216($1;$vo_orderObject)

ASSERT:C1129(Count parameters:C259>0;"requires 1 parameter")
ASSERT:C1129(OB Is defined:C1231($1);"$1 order object cannot be undefined")
ASSERT:C1129(OB Is defined:C1231($1;"authorizations");"$1 order property \"authorizations\" is undefined")

$vb_ok:=False:C215
$vo_orderObject:=$1

ARRAY TEXT:C222($tt_authUrl;0)
OB GET ARRAY:C1229($vo_orderObject;"authorizations";$tt_authUrl)

  // loop through all "authorizations" url
C_LONGINT:C283($i;$vl_count;$vl_okCount)
$vl_okCount:=0
$vl_count:=Size of array:C274($tt_authUrl)
For ($i;1;$vl_count)
	C_TEXT:C284($vt_authzUrl)
	$vt_authzUrl:=$tt_authUrl{$i}  // https://acme-staging-v02.api.letsencrypt.org/acme/authz/n...k
	
	acme__moduleDebugDateTimeLine (4;Current method name:C684;"url \""+$vt_authzUrl+"\"...")
	If (acme_httpChallengePrepare ($vt_authzUrl))
		  //Si (acme_httpChallengePrepare ($vt_directoryUrl;$vt_workingDir;$vt_authzUrl))
		$vl_okCount:=$vl_okCount+1
		acme__moduleDebugDateTimeLine (4;Current method name:C684;"url \""+$vt_authzUrl+"\". [OK]")
	Else 
		acme__moduleDebugDateTimeLine (2;Current method name:C684;"url \""+$vt_authzUrl+"\". [KO]")
	End if 
	
End for 

ARRAY TEXT:C222($tt_authUrl;0)

$vb_ok:=($vl_okCount=$vl_count)
$0:=$vb_ok