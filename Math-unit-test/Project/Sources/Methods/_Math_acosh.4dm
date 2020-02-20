//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_acosh

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_acosh
	  // Description
	  // Unit test 
	  // The Math.acosh() function returns the hyperbolic 
	  // arc-cosine of a number, that is
	  // ∀x≥1, Math.acosh(x)=arcosh(x)=the unique y≥0 such that cosh(y)=x
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("acosh";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return NaN"
$test.expected:=String:C10(Log:C22(-1))
$test.actual:=String:C10($math.acosh())
$test.assert()

$test.given:="expression acosh(0) as argument"
$test.should:="return NaN"
$test.expected:=String:C10(Log:C22(-1))
$test.actual:=String:C10($math.acosh(0))  // expected output: NaN
$test.assert()

$test.given:="expression acosh(1) as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.acosh(1)  // expected output: 1
$test.assert()

$test.given:="expression acosh(-1) as argument"
$test.should:="return NaN"
$test.expected:=String:C10(Log:C22(-1))
$test.actual:=String:C10($math.acosh(-1))  // expected output: NaN
$test.assert()

$test.given:="expression cosh(2) as argument"
$test.should:="return 1.3169578969248166"
$test.expected:=1.316957896925
$test.actual:=$math.acosh(2)  // expected output: 1.3169578969248166 (approximately)
$test.assert()
