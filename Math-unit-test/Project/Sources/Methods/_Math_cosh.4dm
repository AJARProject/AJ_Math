//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_cosh
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_cosh
	  // Description
	  // Unit test 
	  // The Math.cosh() static function returns the coshine of 
	  // the specified angle, which must be specified in radians. 
	  // This value is (length adjacent / length hypotenuse)
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($o)
$o:=Math ()

$test:=New AJ_Tools_UT_describe ("cosh";Current method name:C684;"Test Math formula")


$test.given:="no argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$o.cosh()
$test.assert()

$test.given:="expression cosh(0) as argument"
$test.should:="return "+String:C10((((Exp:C21(0))+Exp:C21(-0)))/2)
$test.expected:=1
$test.actual:=$o.cosh(0)  // expected output: 1 (approximately)
$test.assert()

$test.given:="expression cosh(1) as argument"
$test.should:="return "+String:C10((((Exp:C21(1))+Exp:C21(-1)))/2)
$test.expected:=1.543080634815
$test.actual:=$o.cosh(1)  // expected output: 1.543080634815244 (approximately)
$test.assert()

$test.given:="expression cosh(-1) as argument"
$test.should:="return "+String:C10((((Exp:C21(-1))+Exp:C21(1)))/2)
$test.expected:=Num:C11(String:C10("1.543080634815244"))
$test.actual:=$o.cosh(-1)  // expected output: 1.543080634815244 (approximately)
$test.assert()

$test.given:="expression cosh(2) as argument"
$test.should:="return "+String:C10((((Exp:C21(2))+Exp:C21(-2)))/2)
$test.expected:=Num:C11(String:C10("3.7621956910836314"))
$test.actual:=$o.cosh(2)  // expected output: 3.7621956910836314 (approximately)
$test.assert()
