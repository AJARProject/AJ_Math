//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Tool_Longint2BinaryString

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 17.02.20, 14:42:45
	  // ----------------------------------------------------
	  // Method: _Tool_Longint2BinaryString
	  // Description
	  // 
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

$test:=New AJ_Tools_UT_describe ("Convert a longint to a binary string";Current method name:C684;"Tools")

$test.given:="32766"
$test.should:="return 00000000000000000111111111111110"
$test.expected:="00000000000000000111111111111110"
$test.actual:=LongInt2BinaryString (32766)
$test.assert()

