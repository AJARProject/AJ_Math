//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_tanh 

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 15:46:21
	  // ----------------------------------------------------
	  // Method: _Math_tanh
	  // Description
	  // The Math.tanh() function returns the hyperbolic tangent
	  // of a number, that is :
	  // tanh x = sinh x / cosh x = (eˣ-e⁻ˣ)/(eˣ+e⁻ˣ) = (e²ˣ-1)/(e²ˣ+1)
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($math)
$math:=Math ()
C_OBJECT:C1216($test)

$test:=New AJ_Tools_UT_describe ("tanh";Current method name:C684;"Test Math formula")

$test.given:="0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.tanh(0)
$test.assert()

$test.given:="1"
$test.should:="return 0.7615941559557649"
$test.expected:=0.7615941559558
$test.actual:=$math.tanh(1)
$test.assert()

$test.given:="-1"
$test.should:="return -0.7615941559557649"
$test.expected:=-0.7615941559558
$test.actual:=$math.tanh(-1)
$test.assert()

$test.given:="-100"
$test.should:="return -1"
$test.expected:=-1
$test.actual:=$math.tanh(-100)
$test.assert()

$test.given:="12"
$test.should:="return 0.9999999999244973"
$test.expected:=0.9999999999245
$test.actual:=$math.tanh(12)
$test.assert()

$test.given:="-0.5"
$test.should:="return -0.46211715726000974"
$test.expected:=-0.46211715726
$test.actual:=$math.tanh(-0.5)
$test.assert()