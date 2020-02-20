//%attributes = {"shared":true}
  // __UNIT_TEST
  // _Math_sqrt 
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 15:17:13
	  // ----------------------------------------------------
	  // Method: _Math_sqrt
	  // Description
	  // The Math.sqrt() function returns the square root of 
	  // a number, that is :
	  // ∀x≥0, Math.sqrt(x)=√x = the unique y≥0 such that y²=x
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("sqrt";Current method name:C684;"Test Math formula")

$test.given:="(3^2)+(4^2)"
$test.should:="return 5"
$test.expected:=5
$test.actual:=$math.sqrt((3^2)+(4^2))
$test.assert()

$test.given:="(5^2)+(12^2)"
$test.should:="return 13"
$test.expected:=13
$test.actual:=$math.sqrt((5^2)+(12^2))
$test.assert()

$test.given:="0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.sqrt(0)
$test.assert()