//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_asinh

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_asinh
	  // Description
	  // Unit test 
	  // The Math.asinh() function returns the hyperbolic arcsine of a number, that is
	  // 
	  // ∀x≥1, Math.asinh(x)=arsinh(x)=the unique y≥0 such that sinh(y)=x
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("asinh";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.asinh()
$test.assert()

$test.given:="expression asinh(0) as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.asinh(0)  // expected output: 0
$test.assert()

$test.given:="expression asinh(1) as argument"
$test.should:="return 0.881373587019543"
$test.expected:=0.8813735870195
$test.actual:=$math.asinh(1)  // expected output: 0.881373587019543
$test.assert()

$test.given:="expression asinh(-1) as argument"
$test.should:="return -0.881373587019543"
$test.expected:=-0.8813735870195
$test.actual:=$math.asinh(-1)  // expected output: -0.881373587019543
$test.assert()

$test.given:="expression cosh(2) as argument"
$test.should:="return 1.4436354751788103"
$test.expected:=1.443635475179
$test.actual:=$math.asinh(2)  // expected output: 1.4436354751788103(approximately)
$test.assert()
