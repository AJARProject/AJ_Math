//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_toRadians 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 28.02.20, 12:05:33
	  // ----------------------------------------------------
	  // Method: _Math_toRadians
	  // Description
	  // Convert Degrees in Radians
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("toRadians";Current method name:C684;"Test Math formula")
$test.given:="45 degrees equal 0.7853981633975 radian"
$test.should:="return 0.7853981633975"
$test.expected:=0.7853981633975
$test.actual:=$math.toRadians(45)
$test.assert()