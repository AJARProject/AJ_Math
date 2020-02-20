//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_Properties
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties_LN10
	  // Description
	  // Unit test 
	  // Math.LN10 property represents the natural logarithm of 10,
	  // approximately 2.302585092994046
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("Math.LN10";Current method name:C684;"Test Math properties")


$test.given:="Math.LN10"
$test.should:="return 2.302585092994046"
$test.expected:=2.302585092994
$test.actual:=$math.LN10
$test.assert()

