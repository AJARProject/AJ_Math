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
	  // The Math.LOG10E property represents the base 10
	  // logarithm of e, approximately 0.434:
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("LOG10E";Current method name:C684;"Test Math properties")


$test.given:="no argument"
$test.should:="return 0.4342944819033"
$test.expected:=0.4342944819033  // expected output: 0.4342944819032518
$test.actual:=$math.LOG10E
$test.assert()

