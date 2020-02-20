//%attributes = {"shared":true}
  // __UNIT_TEST

  //
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 09:31:19
	  // ----------------------------------------------------
	  // Method: _Math_abs
	  // Description
	  // Unit test of the abs function
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("abs";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.abs()
$test.assert()

$test.given:="text \"NaN\" as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.abs("Nan")
$test.assert()

$test.given:="expression addition (-12+13) as argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.abs(-12+13)
$test.assert()

$test.given:="negative number -12 as argument"
$test.should:="return 12"
$test.expected:=12
$test.actual:=$math.abs(-12)
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.abs(New object:C1471())
$test.assert()

$test.given:="passing a collection with one element [2] as argument"
$test.should:="return 2"
$test.expected:=2
$test.actual:=$math.abs(New collection:C1472(2))
$test.assert()

$test.given:="passing a collection with one element negative [-2] as argument"
$test.should:="return 2"
$test.expected:=2
$test.actual:=$math.abs(New collection:C1472(-2))
$test.assert()

$test.given:="passing a collection with more than one element [2,3] as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.abs(New collection:C1472(2;3))
$test.assert()






