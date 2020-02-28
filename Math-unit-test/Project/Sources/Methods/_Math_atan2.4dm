//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_atan2 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 28.02.20, 11:58:32
	  // ----------------------------------------------------
	  // Method: _Math_atan2
	  // Description
	  // The Math.atan2() function returns the angle in the plane
	  // (in radians) between the positive x-axis and the ray 
	  // from (0,0) to the point (x,y), for Math.atan2(y,x).
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("atan2";Current method name:C684;"Test Math formula")
$test.given:="atan2(15, 90) return 0.1651486774146"
$test.should:="return 0.1651486774146"
$test.expected:=0.1651486774146
$test.actual:=$math.atan2(15;90)
$test.assert()

$test.given:="atan2(0,0) return 0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.atan2(0;0)
$test.assert()

$test.given:="atan2(1,2) return 0.4636476090008"
$test.should:="return 0.4636476090008"
$test.expected:=0.4636476090008
$test.actual:=$math.atan2(1;2)
$test.assert()

