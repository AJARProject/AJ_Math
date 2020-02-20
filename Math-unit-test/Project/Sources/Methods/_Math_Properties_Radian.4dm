//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_Properties
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties
	  // Description
	  // Unit test 
	  // Math.Radian approximately 57.29577951308
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("Math.Radian";Current method name:C684;"Test Math properties")


$test.given:="no argument"
$test.should:="return 57.29577951308"
$test.expected:=57.29577951308
$test.actual:=$math.Radian
$test.assert()

