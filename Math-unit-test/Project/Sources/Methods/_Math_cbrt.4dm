//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_cbrt
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_cbrt
	  // Description
	  // Unit test 
	  // The Math.cbrt() function returns the cube root of a number, that is
	  // Math.cbrt(x) = ∛x = the unique y such that y³ = x
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("cbrt";Current method name:C684;"Test Math formula")


$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.cbrt()
$test.assert()

$test.given:="\"-INF\" as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.cbrt(String:C10(-1/0)))  // -INF!!!
$test.assert()

$test.given:="expression cbrt(2/1) as argument"
$test.should:="return 1.2599210498948732"
$test.expected:=1.259921049895
$test.actual:=$math.cbrt(2/1)  // expected output: 1.2599210498948732 (approximately)
$test.assert()

$test.given:="expression (cbrt(1*1)) as argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.cbrt(1)  // 
$test.assert()

$test.given:="expression (cbrt(-1) as argument"
$test.should:="return -1"
$test.expected:=-1
$test.actual:=$math.cbrt(-1)  // 
$test.assert()

$test.given:="expression cbrt(-0) as argument"
$test.should:="return -0"
$test.expected:=-0
$test.actual:=$math.cbrt(-0)  // expected output: 0
$test.assert()

$test.given:="expression cbrt(0) as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.cbrt(0)  // expected output: 0
$test.assert()
