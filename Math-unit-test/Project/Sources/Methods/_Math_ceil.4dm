//%attributes = {"shared":true}
  // __UNIT_TEST

  //
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 09:31:19
	  // ----------------------------------------------------
	  // Method: _Math_ceil
	  // Description
	  // Unit test of the ceil function
	  // The Math.ceil() function always rounds a number up to
	  // the next largest whole number or integer.
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
C_COLLECTION:C1488($col)

$math:=Math ()

$test:=New AJ_Tools_UT_describe ("ceil";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.ceil()
$test.assert()

$test.given:="text \"NaN\" as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.ceil("Nan")
$test.assert()

$test.given:="expression addition (1+0.95) as argument"
$test.should:="return 2"
$test.expected:=2
$test.actual:=$math.ceil(1+0.95)
$test.assert()

$test.given:="passing 4 as argument"
$test.should:="return 4"
$test.expected:=4
$test.actual:=$math.ceil(4)
$test.assert()

$test.given:="negative number -7.004 as argument"
$test.should:="return -7"
$test.expected:=-7
$test.actual:=$math.ceil(-7.004)
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.ceil(New object:C1471())
$test.assert()

$test.given:="passing a collection with one element [7.004] as argument"
$test.should:="return 8"
$test.expected:=8
$test.actual:=$math.ceil(New collection:C1472(7.004))
$test.assert()

$test.given:="passing a collection with one element negative [-7.004] as argument"
$test.should:="return -7"
$test.expected:=-7
$test.actual:=$math.ceil(New collection:C1472(-7.004))
$test.assert()

$test.given:="passing a collection with more than one element [2.05,3.5] as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.ceil(New collection:C1472(2.05;3.5))
$test.assert()






