//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_Properties
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties_SQRT2
	  // Description
	  // Unit test 
	  // Math.SQRT2 property represents the square root of 2,
	  //  approximately 1.414213562373
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("Math.SQRT2";Current method name:C684;"Test Math properties")


$test.given:="Math.SQRT2"
$test.should:="return 1.414213562373"+
$test.expected:=1.414213562373
$test.actual:=$math.SQRT2
$test.assert()

