//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_sinh 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 15:07:49
	  // ----------------------------------------------------
	  // Method: _Math_sinh
	  // Description
	  // The Math.sinh() function returns the hyperbolic sine
	  // of a number, that can be expressed using the constant 
	  // e:   Math.sinh(x)=(eˣ-e-ˣ)/2
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("sinh";Current method name:C684;"Test Math formula")

$test.given:="0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.sinh(0)
$test.assert()

$test.given:="1"
$test.should:="return 1.1752011936438014"
$test.expected:=1.175201193644
$test.actual:=$math.sinh(1)
$test.assert()

$test.given:="-1"
$test.should:="return -1.1752011936438014"
$test.expected:=-1.175201193644
$test.actual:=$math.sinh(-1)
$test.assert()

$test.given:="2"
$test.should:="return 3.626860407847019"
$test.expected:=3.626860407847
$test.actual:=$math.sinh(2)
$test.assert()