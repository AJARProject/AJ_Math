//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_Properties
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties_LN2
	  // Description
	  // Unit test 
	  // Math.LN2 property represents the natural logarithm of 2,
	  // approximately 0.6931471805599
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("LN2";Current method name:C684;"Test Math properties")


$test.given:="no argument"
$test.should:="return "+String:C10(Log:C22(2))
$test.expected:=Log:C22(2)
$test.actual:=$math.LN2
$test.assert()

