//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_expm1

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 17.02.20, 15:39:09
	  // ----------------------------------------------------
	  // Method: _Math_expm1
	  // Description
	  // The Math.expm1() function returns eˣ - 1, where x 
	  // is the argument, and e the base of the natural logarithms.
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("expm1";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.expm1()
$test.assert()


$test.given:="expression addition (0+1) as argument"
$test.should:="return 1.718281828459045"
$test.expected:=1.718281828459
$test.actual:=$math.expm1(0+1)  // 1.718281828459045
$test.assert()

$test.given:="negative number -1 as argument"
$test.should:="return -0.6321205588285577"
$test.expected:=-0.6321205588286
$test.actual:=$math.expm1(-1)  //-0.6321205588285577
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.expm1(New object:C1471())
$test.assert()

$test.given:="passing a collection with one element [2] as argument"
$test.should:="return 6.38905609893065"
$test.expected:=6.389056098931
$test.actual:=$math.expm1(New collection:C1472(2))
$test.assert()


$test.given:="passing a collection with more than one element [2,3] as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.expm1(New collection:C1472(2;3))
$test.assert()






