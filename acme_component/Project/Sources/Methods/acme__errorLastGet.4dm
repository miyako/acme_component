//%attributes = {"invisible":true,"shared":false,"preemptive":"capable","executedOnServer":false,"publishedSql":false,"publishedWsdl":false,"publishedSoap":false,"publishedWeb":false,"published4DMobile":{"scope":"none"}}
  //================================================================================
  //@xdoc-start : en
  //@name : acme__errorLastGet
  //@scope : private
  //@deprecated : no
  //@description : This function returns the last error number
  //@parameter[0-OUT-lastErrorNo-LONGINT] : last error number
  //@notes : 
  //@example : acme__errorLastGet
  //@see : 
  //@version : 1.00.00
  //@author : 
  //@history : 
  //  CREATION : Bruno LEGAY (BLE) - 23/06/2018, 11:44:21 - 1.00.00
  //@xdoc-end
  //================================================================================

C_LONGINT:C283($0;$vl_error)

$vl_error:=vl_ACME_error

$0:=$vl_error
