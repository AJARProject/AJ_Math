//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_Properties
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties_SQRT1_2
	  // Description
	  // Unit test 
	  // Math.SQRT1_2 property represents the square root of
	  // 1/2 which is approximately 0.707
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("SQRT1_2";Current method name:C684;"Test Math properties")


$test.given:="no argument"
$test.should:="return 0.7071067811865"
$test.expected:=0.7071067811865
$test.actual:=$math.SQRT1_2
$test.assert()

