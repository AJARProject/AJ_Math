//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_Properties
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties
	  // Description
	  // Unit test 
	  // Math.atan() function returns the arctangent
	  // (in radians) of a number
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("atan";Current method name:C684;"Test Math formula")


$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.atan()
$test.assert()

$test.given:="expression atan(8/10) as argument"
$test.should:="return "+String:C10(Arctan:C20(8/10))
$test.expected:=Arctan:C20(8/10)
$test.actual:=$math.atan(8/10)  // expected output: 0.6747409422235527
$test.assert()

$test.given:="expression (atan(1)*4) as argument"
$test.should:="return "+String:C10($math.PI)
$test.expected:=$math.PI
$test.actual:=$math.atan(1)*4  // expected output: 3.14159265359
$test.assert()

$test.given:="expression atan(5/3) as argument"
$test.should:="return "+String:C10(Arctan:C20(5/3))
$test.expected:=Arctan:C20(5/3)
$test.actual:=$math.atan(5/3)  // expected output: 1.0303768265243125
$test.assert()
