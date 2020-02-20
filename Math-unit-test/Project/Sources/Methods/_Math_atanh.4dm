//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_atanh
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_atanh
	  // Description
	  // Unit test 
	  // The Math.atanh() function returns the hyperbolic arctangent of a number, that is
	  // ∀x∊(-1,1), Math.atanh(x)=arctanh(x)=the unique y such that tanh(y)=x
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("atanh";Current method name:C684;"Test Math formula")


$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.atanh()
$test.assert()

$test.given:="expression atanh(1/2) as argument"
$test.should:="return 0.549306144334055"
$test.expected:=0.5493061443341
$test.actual:=$math.atanh(1/2)  // expected output: 0.549306144334055 (approximately)
$test.assert()

$test.given:="expression (atanh(1*1) as argument"
$test.should:="return "+String:C10(1/0)
$test.expected:=String:C10(1/0)  //INF !!!
$test.actual:=String:C10($math.atanh(1*1))  // 
$test.assert()

$test.given:="expression (atanh(-1) as argument"
$test.should:="return "+String:C10(-1/0)
$test.expected:=String:C10(-1/0)  //-INF !!!
$test.actual:=String:C10($math.atanh(-1))  // 
$test.assert()

$test.given:="expression atanh(0) as argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.atanh(0)  // expected output: 0
$test.assert()
