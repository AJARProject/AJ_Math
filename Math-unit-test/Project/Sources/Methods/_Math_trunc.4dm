//%attributes = {"shared":true}
  // __UNIT_TEST
  // _Math_trunc 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 16:06:38
	  // ----------------------------------------------------
	  // Method: _Math_trunc
	  // Description
	  // The Math.trunc() function returns the integer part of
	  // a number by removing any fractional digits
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("trunc";Current method name:C684;"Test Math formula")

$test.given:="13.37"
$test.should:="return 13"
$test.expected:=13
$test.actual:=$math.trunc(13.37)
$test.assert()

$test.given:="42.84"
$test.should:="return 42"
$test.expected:=42
$test.actual:=$math.trunc(42.84)
$test.assert()

$test.given:="-42.84"
$test.should:="return -42"
$test.expected:=-42
$test.actual:=$math.trunc(-42.84)
$test.assert()

$test.given:="0.123"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.trunc(0.123)
$test.assert()

$test.given:="-0.123"
$test.should:="return -0"
$test.expected:=-0
$test.actual:=$math.trunc(-0.123)
$test.assert()