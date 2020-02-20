//%attributes = {"shared":true}
  // __UNIT_TEST

  //
If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 09:31:19
	  // ----------------------------------------------------
	  // Method: _Math_log2
	  // Description
	  // Unit test of the log2 function
	  // The Math.log2() function returns the base 2 logarithm of a number, that is
	  // ∀x>0 , Math.log2(x)=log₂(x) = the unique y such that 2ʸ = x 
	  // No Parameters
	  // ----------------------------------------------------
End if 

/*
If x is NaN, the result is NaN.
If x is less than 0, the result is NaN.
If x is +0, the result is -∞.
If x is -0, the result is -∞.
If x is 1, the result is +0.
*/

C_OBJECT:C1216($math)
C_COLLECTION:C1488($col)

$math:=Math ()

$test:=New AJ_Tools_UT_describe ("log2";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log2())  // -INF
$test.assert()

$test.given:="text \"NaN\" as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!
$test.actual:=String:C10($math.log2("NaN"))  // -INF !!!
$test.assert()

$test.given:="passing an empty object {} as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log2(New object:C1471()))
$test.assert()

$test.given:="expression division (3/1) as argument"
$test.should:="return 1.584962500721156"
$test.expected:=1.584962500721
$test.actual:=$math.log2(3/1)
$test.assert()

$test.given:="passing a collection with one element [2] as argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.log2(New collection:C1472(2))
$test.assert()

$test.given:="passing a collection with one element negative [-2] as argument"
$test.should:="return NaN"
$test.expected:=String:C10(Log:C22(-1))
$test.actual:=String:C10($math.log2(New collection:C1472(-2)))
$test.assert()

$test.given:="passing a collection with more than one element [2,3] as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.log2(New collection:C1472(2;3)))
$test.assert()

$test.given:="passsing (1) as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.log2(1)
$test.assert()




