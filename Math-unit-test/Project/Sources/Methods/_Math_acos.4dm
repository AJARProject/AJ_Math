//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_acos
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 28.02.20, 11:29:48
	  // ----------------------------------------------------
	  // Method: _Math_acos
	  // Description
	  // The Math.acos() function returns the arccosine (in radians) of a number
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("acos";Current method name:C684;"Test Math formula")
$test.given:=" the arccos of 0.866 is 0.5236495809318 in radian"
$test.should:="return 0.5236495809318"
$test.expected:=0.5236495809318
$test.actual:=$math.acos(0.866)
$test.assert()

$test.given:=" the arccos of -1 is PI"
$test.should:="return 3.14159265359"
$test.expected:=$math.PI
$test.actual:=$math.acos(-1)
$test.assert()

$test.given:=" the arccos of 0 is 1.5707963267948966"
$test.should:="return 1.5707963267948966"
$test.expected:=1.570796326795
$test.actual:=$math.acos(0)
$test.assert()

$test.given:=" the arccos of 0.5 is 1.0471975511965979"
$test.should:="return 1.0471975511965979"
$test.expected:=1.047197551197
$test.actual:=$math.acos(0.5)
$test.assert()

$test.given:=" the arccos of 1 is 0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.acos(1)
$test.assert()

$test.given:=" the arccos of 2 is 0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.acos(2)
$test.assert()

$test.given:=" the arccos of -2 is 0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.acos(-2)
$test.assert()

