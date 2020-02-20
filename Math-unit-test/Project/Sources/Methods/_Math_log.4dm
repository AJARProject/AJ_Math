//%attributes = {"shared":true}
  // __UNIT_TEST

  //
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 09:31:19
	  // ----------------------------------------------------
	  // Method: _Math_log
	  // Description
	  // Unit test of the log function
	  // The Math.log() function returns the natural logarithm (base e) of a number
	  // No Parameters
	  // ----------------------------------------------------
End if 

/*
If x is NaN, the result is NaN.
If x is less than 0, the result is NaN.
If x is +0 or -0, the result is -∞.
If x is 1, the result is +0
If x is +∞, the result is +∞.
*/

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("log";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log())  // -INF !!!
$test.assert()

$test.given:="text \"NaN\" as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log("NaN"))  // -INF !!!
$test.assert()

$test.given:="expression division (log(8)/log(2)) as argument"
$test.should:="return 3"
$test.expected:=3
$test.actual:=$math.log(8)/$math.log(2)
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log(New object:C1471()))
$test.assert()

$test.given:="passing a collection with one element [2] as argument"
$test.should:="return 0.6931471805599"
$test.expected:=0.6931471805599
$test.actual:=$math.log(New collection:C1472(2))
$test.assert()

$test.given:="passing a collection with one element negative [-2] as argument"
$test.should:="return NaN"
$test.expected:=String:C10(Log:C22(-1))
$test.actual:=String:C10($math.log(New collection:C1472(-2)))
$test.assert()

$test.given:="passing a collection with more than one element [2,3] as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log(New collection:C1472(2;3)))
$test.assert()

$test.given:="passsing (1) as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.log(1)
$test.assert()




