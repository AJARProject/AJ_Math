//%attributes = {"shared":true}
  // __UNIT_TEST

  //
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 09:31:19
	  // ----------------------------------------------------
	  // Method: _Math_floor
	  // Description
	  // Unit test of the floor function
	  //The Math.floor() function returns the largest integer
	  // less than or equal to a given number.
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
C_COLLECTION:C1488($col)

$math:=Math ()

$test:=New AJ_Tools_UT_describe ("floor";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.floor()
$test.assert()

$test.given:="text \"NaN\" as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.floor("Nan")
$test.assert()

$test.given:="expression addition (3+2.95) as argument"
$test.should:="return 5"
$test.expected:=5
$test.actual:=$math.floor(3+2.95)
$test.assert()

$test.given:="negative number -5.05 as argument"
$test.should:="return -6"
$test.expected:=-6
$test.actual:=$math.floor(-5.05)
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.floor(New object:C1471())
$test.assert()

$test.given:="passing a collection with one element [5.05] as argument"
$test.should:="return 5"
$test.expected:=5
$test.actual:=$math.floor(New collection:C1472(5.05))
$test.assert()

$test.given:="passing a collection with one element negative [-5.05] as argument"
$test.should:="return -6"
$test.expected:=-6
$test.actual:=$math.floor(New collection:C1472(-5.05))
$test.assert()

$test.given:="passing a collection with more than one element [2.05,3.5] as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.floor(New collection:C1472(2.05;3.5))
$test.assert()






