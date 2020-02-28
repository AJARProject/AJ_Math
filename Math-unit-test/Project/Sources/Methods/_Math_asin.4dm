//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_asin

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 28.02.20, 11:49:18
	  // ----------------------------------------------------
	  // Method: _Math_asin
	  // Description
	  // The Math.asin() function returns the arcsine (in radians) 
	  // of a number
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)

$test:=New AJ_Tools_UT_describe ("asin";Current method name:C684;"Test Math formula")
$test.given:=" the arcsine of 2 is 0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.asin(2)
$test.assert()

$test.given:=" the arcsine of -2 is 0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.asin(-2)
$test.assert()

$test.given:=" the arcsine of -1 is -Pi/2"
$test.should:="return -1.5707963267948966"
$test.expected:=-1.570796326795
$test.actual:=$math.asin(-1)
$test.assert()

$test.given:=" the arcsine of 0 is 0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.asin(0)
$test.assert()

$test.given:=" the arcsine of 0.5 is 0.5235987755982989"
$test.should:="return 0.5235987755982989"
$test.expected:=0.5235987755983
$test.actual:=$math.asin(0.5)
$test.assert()

$test.given:=" the arcsine of 1 is Pi/2"
$test.should:="return 1.5707963267948966"
$test.expected:=1.570796326795
$test.actual:=$math.asin(1)
$test.assert()

