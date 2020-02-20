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
	  // Math.E property represents the base of natural
	  // logarithms, e, approximately 2.718281828459
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("Math.E";Current method name:C684;"Test Math properties")


$test.given:="Math.E"
$test.should:="return 2.718281828459"
$test.expected:=2.718281828459
$test.actual:=$math.E
$test.assert()

