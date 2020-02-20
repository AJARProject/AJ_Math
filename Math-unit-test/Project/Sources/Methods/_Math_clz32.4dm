//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_clz32

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 17.02.20, 15:28:45
	  // ----------------------------------------------------
	  // Method: _Math_clz32
	  // Description
	  // The Math.clz32() function returns the number of 
	  // leading zero bits in the 32-bit binary representation 
	  // of a number.
	  //
	  // clz32 is short for CountLeadingZeroes32.
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("clz32";Current method name:C684;"Test Math formula")


$test.given:="Math.clz32(1)"
$test.should:="return 31"
$test.expected:=31
$test.actual:=$math.clz32(1)  // 00000000000000000000000000000001
$test.assert()

$test.given:="Math.clz32(4)"
$test.should:="return 29"
$test.expected:=29
$test.actual:=$math.clz32(4)  // 00000000000000000000000000000100
$test.assert()

$test.given:="Math.clz32(1000)"
$test.should:="return 22"
$test.expected:=22
$test.actual:=$math.clz32(1000)  // 00000000000000000000001111101000
$test.assert()