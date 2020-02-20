//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_hypot

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 18.02.20, 11:41:07
	  // ----------------------------------------------------
	  // Method: _Math_hypot
	  // Description
	  // The Math.hypot() function returns the square root of
	  //the sum of squares of its arguments
	  //
	  // No Parameters
	  // number or a collection
	  //
	  // If no arguments are given, the result is +0.
	  // If at least one of the arguments cannot be converted
	  // to a number, the result is NaN.
	  //
	  // With one argument, Math.hypot()returns the same as Math.abs().
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("hypot";Current method name:C684;"Test Math formula")

$test.given:="One negative value as argument hypot()"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.hypot()
$test.assert()

$test.given:="One negative value as argument hypot(-5)"
$test.should:="return 5"
$test.expected:=5
$test.actual:=$math.hypot(-5)
$test.assert()

$test.given:="A collection of two values hypot([3;4])"
$test.should:="return 5"
$test.expected:=5
$test.actual:=$math.hypot(New collection:C1472(3;4))
$test.assert()

$test.given:="A collection of three values hypot([3;4;5])"
$test.should:="return 7.0710678118654755"
$test.expected:=7.071067811865
$test.actual:=$math.hypot(New collection:C1472(3;4;5))
$test.assert()

$test.given:="A collection of three values hypot([3;4;\"foo\"])"
$test.should:="return 5"
$test.expected:=5
$test.actual:=$math.hypot(New collection:C1472(3;4;"foo"))
$test.assert()

$test.given:="A collection of three values hypot([3;4;\"5\"])"
$test.should:="return 7.0710678118654755"
$test.expected:=7.071067811865
$test.actual:=$math.hypot(New collection:C1472(3;4;"5"))
$test.assert()



