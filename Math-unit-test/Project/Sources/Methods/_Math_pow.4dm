//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_pow
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 12:39:52
	  // ----------------------------------------------------
	  // Method: _Math_pow
	  // Description
	  // The Math.pow() function returns the base to the exponent
	  //  power, that is, bas^exponent.
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

$math:=Math ()

$test:=New AJ_Tools_UT_describe ("pow";Current method name:C684;"Test Math formula")

$test.given:="passing (7;3)"
$test.should:="return 343"
$test.expected:=343
$test.actual:=$math.pow(7;3)
$test.assert()

$test.given:="passing (4;0.5)"
$test.should:="return 2"
$test.expected:=2
$test.actual:=$math.pow(4;0.5)
$test.assert()

$test.given:="passing (7;-2)"
$test.should:="return 0.02040816326530612"
$test.expected:=0.02040816326531
$test.actual:=$math.pow(7;-2)
$test.assert()

$test.given:="passing (-7;0.5)"
$test.should:="return NaN"
$test.expected:=String:C10(Log:C22(-1))
$test.actual:=String:C10($math.pow(-7;0.5))
$test.assert()

