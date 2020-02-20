//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_round 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 14:26:09
	  // ----------------------------------------------------
	  // Method: _Math_round
	  // Description
	  // The Math.round() function returns the value of a number
	  // rounded to the nearest integer
	  //
	  // If the fractional portion of the argument is greater than 0.5,
	  // the argument is rounded to the integer with the next higher 
	  // absolute value. If it is less than 0.5, the argument is rounded
	  // to the integer with the lower absolute value.  If the fractional
	  // portion is exactly 0.5, the argument is rounded to the next
	  // integer in the direction of +∞.  Note that this differs from
	  // many languages' round() functions, which often round this case
	  // to the next integer away from zero, instead giving a different
	  // result in the case of negative numbers with a fractional part
	  // of exactly 0.5
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 
C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("round";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.round()
$test.assert()

$test.given:="passing 0.9 as argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.round(0.9)
$test.assert()

$test.given:="passing 5.95 as argument"
$test.should:="return 6"
$test.expected:=6
$test.actual:=$math.round(5.95)
$test.assert()

$test.given:="passing 5.5 as argument"
$test.should:="return 6"
$test.expected:=6
$test.actual:=$math.round(5.5)
$test.assert()

$test.given:="passing 5.05 as argument"
$test.should:="return 5"
$test.expected:=5
$test.actual:=$math.round(5.05)
$test.assert()

$test.given:="passing -5.05 as argument"
$test.should:="return -5"
$test.expected:=-5
$test.actual:=$math.round(-5)
$test.assert()

$test.given:="passing -5.5 as argument"
$test.should:="return -5"
$test.expected:=-5
$test.actual:=$math.round(-5.5)
$test.assert()

$test.given:="passing -5.95 as argument"
$test.should:="return -6"
$test.expected:=-6
$test.actual:=$math.round(-5.95)
$test.assert()

