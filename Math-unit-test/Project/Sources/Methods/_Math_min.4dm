//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_min
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 12:17:28
	  // ----------------------------------------------------
	  // Method: _Math_min
	  // Description
	  // The Math.min() returns the lowest-valued number passed 
	  // into it, or NaN if any parameter isn't a number and 
	  // can't be converted into one.
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

$math:=Math ()

$test:=New AJ_Tools_UT_describe ("min";Current method name:C684;"Test Math formula")

$test.given:="passing a collection with one element [1]"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.min(New collection:C1472(1))
$test.assert()

$test.given:="passing a collection [2;3;1]"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.min(New collection:C1472(2;3;1))
$test.assert()

$test.given:="passing a collection [-2;-3;-1]"
$test.should:="return -3"
$test.expected:=-3
$test.actual:=$math.min(New collection:C1472(-2;-3;-1))
$test.assert()

$test.given:="passing a collection [-1;-3;2]"
$test.should:="return -3"
$test.expected:=-3
$test.actual:=$math.min(New collection:C1472(-1;-3;2))
$test.assert()
