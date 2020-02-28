//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_toDegrees

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 28.02.20, 12:08:27
	  // ----------------------------------------------------
	  // Method: _Math_toDegrees
	  // Description
	  // Convert Radians in Degrees
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)

$test:=New AJ_Tools_UT_describe ("toDegrees";Current method name:C684;"Test Math formula")
$test.given:="0.7853981633975 radians equal 45 degrees"
$test.should:="return 45"
$test.expected:=45
$test.actual:=$math.toDegrees(0.7853981633975)
$test.assert()