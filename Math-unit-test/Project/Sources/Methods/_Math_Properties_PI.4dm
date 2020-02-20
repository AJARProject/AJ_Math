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
	  // Math.PI represents the ratio of the circumference of 
	  // a circle to its diameter, approximately 3.14159
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($o)
$o:=Math ()

$test:=New AJ_Tools_UT_describe ("PI";Current method name:C684;"Test Math properties")


$test.given:="no argument"
$test.should:="return "+String:C10(Pi:K30:1)
$test.expected:=Pi:K30:1
$test.actual:=$o.PI()
$test.assert()

