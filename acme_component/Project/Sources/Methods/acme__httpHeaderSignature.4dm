//%attributes = {"invisible":true,"shared":false,"preemptive":"capable","executedOnServer":false,"publishedSql":false,"publishedWsdl":false,"publishedSoap":false,"publishedWeb":false,"published4DMobile":{"scope":"none"}}
  //================================================================================
  //@xdoc-start : en
  //@name : acme__httpHeaderSignature
  //@scope : private
  //@deprecated : no
  //@description : This function returns the http header signature
  //@parameter[0-OUT-httpHeaderSignature-TEXT] : http header signature (e.g. "acme_component (4D) v0.90.12/4D v18.0 Final (Build 246707) (64 bits)/macOS")
  //@notes :
  //@example : acme__httpHeaderSignature
  //@see : 
  //@version : 1.00.00
  //@author : Bruno LEGAY (BLE) - Copyrights A&C Consulting 2022
  //@history : 
  //  CREATION : Bruno LEGAY (BLE) - 25/06/2018, 20:22:36 - 1.0
  //@xdoc-end
  //================================================================================

C_TEXT:C284($0;$vt_httpHeaderSignature)

$vt_httpHeaderSignature:="acme_component (4D) v"+acme_componentVersionGet +\
"/"+ENV_versionStr +Choose:C955(ENV_is64bits ;" (64 bits)";" (32 bits)")+\
"/"+Choose:C955(Is Windows:C1573;"Windows";"macOS")

$0:=$vt_httpHeaderSignature
