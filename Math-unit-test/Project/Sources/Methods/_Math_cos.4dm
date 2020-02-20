//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_cos
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_cos
	  // Description
	  // Unit test 
	  // The Math.cos() static function returns the cosine of 
	  // the specified angle, which must be specified in radians. 
	  // This value is (length adjacent / length hypotenuse)
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($o)
$o:=Math ()

$test:=New AJ_Tools_UT_describe ("cos";Current method name:C684;"Test Math formula")


$test.given:="no argument"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$o.cos()
$test.assert()

$test.given:="expression cos(1)*10 as argument"
$test.should:="return "+String:C10(Cos:C18(1)*10)
$test.expected:=Cos:C18(1)*10
$test.actual:=$o.cos(1)*10  // expected output: 5.403023058681398
$test.assert()

$test.given:="expression cos(2)*10 as argument"
$test.should:="return "+String:C10(Cos:C18(2)*10)
$test.expected:=Cos:C18(2)*10
$test.actual:=$o.cos(2)*10  // expected output: -4.161468365471424
$test.assert()

$test.given:="expression ((Math.PI)* 10) as argument"
$test.should:="return "+String:C10(Cos:C18($o.PI())*10)
$test.expected:=Cos:C18($o.PI())*10
$test.actual:=$o.cos($o.PI())*10  // expected output: -10
$test.assert()
