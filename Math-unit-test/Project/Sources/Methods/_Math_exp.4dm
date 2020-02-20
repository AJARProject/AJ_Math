//%attributes = {"shared":true}
  // __UNIT_TEST



  // _Math_exp
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 17.02.20, 15:39:09
	  // ----------------------------------------------------
	  // Method: _Math_exp
	  // Description
	  // The Math.exp() function returns ex, where x is the
	  // argument, and e is Euler's number (also known as
	  // Napier's constant), the base of the natural logarithms.
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 



C_OBJECT:C1216($math)
C_COLLECTION:C1488($col)
C_OBJECT:C1216($test)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("exp";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.exp()
$test.assert()


$test.given:="expression addition (1+1) as argument"
$test.should:="return 7.38905609893065"
$test.expected:=7.389056098931
$test.actual:=$math.exp(1+1)  // 7.38905609893065
$test.assert()

$test.given:="negative number -1 as argument"
$test.should:="return 0.36787944117144233"
$test.expected:=0.3678794411714
$test.actual:=$math.exp(-1)  // 0.36787944117144233
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.exp(New object:C1471())
$test.assert()

$test.given:="passing a collection with one element [1] as argument"
$test.should:="return 2.718281828459045"
$test.expected:=2.718281828459
$test.actual:=$math.exp(New collection:C1472(1))
$test.assert()


$test.given:="passing a collection with more than one element [2,3] as argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.exp(New collection:C1472(2;3))
$test.assert()






