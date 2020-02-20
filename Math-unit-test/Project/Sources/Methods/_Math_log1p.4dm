//%attributes = {"shared":true}
  // __UNIT_TEST

  //
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 09:31:19
	  // ----------------------------------------------------
	  // Method: _Math_log1p
	  // Description
	  // Unit test of the log1p function
	  // The Math.log1p() function returns the natural logarithm
	  //  (base e) of 1 + a number, that is
	  // No Parameters
	  // ----------------------------------------------------
End if 

/*
Math.log1p(1);  // 0.6931471805599453
Math.log1p(0);  // 0
Math.log1p(-1); // -Infinity
Math.log1p(-2); // NaN
*/

C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("log1p";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.log1p()
$test.assert()

$test.given:="text \"NaN\" as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.log1p("NaN")
$test.assert()

$test.given:="passing 1 as argument"
$test.should:="return 0.6931471805599453"
$test.expected:=0.6931471805599
$test.actual:=$math.log1p(1)
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.log1p(New object:C1471())
$test.assert()

$test.given:="passing a collection with one element [0] as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)
$test.actual:=String:C10($math.log(New collection:C1472(0)))
$test.assert()

$test.given:="passing a collection with one element negative [-2] as argument"
$test.should:="return NaN"
$test.expected:=String:C10(Log:C22(-1))
$test.actual:=String:C10($math.log1p(New collection:C1472(-2)))
$test.assert()

$test.given:="passing a collection with more than one element [2,3] as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.log1p(New collection:C1472(2;3))
$test.assert()

$test.given:="passsing (-1) as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log1p(-1))
$test.assert()




