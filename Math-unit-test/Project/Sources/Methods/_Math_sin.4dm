//%attributes = {"shared":true}
  // __UNIT_TEST
  // _Math_Properties

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties
	  // Description
	  // Unit test 
	  // The Math.sin() function returns the sine of a number
	  // specified in radians. 
	  // This value is (length opposite / length hypotenuse)
	  // 
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("sin";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.sin()
$test.assert()

$test.given:="expression cos(1)*10 as argument"
$test.should:="return "+String:C10(Sin:C17(1)*10)
$test.expected:=Sin:C17(1)*10
$test.actual:=$math.sin(1)*10  // expected output: 8.414709848078965
$test.assert()

$test.given:="expression sin(2)*10 as argument"
$test.should:="return "+String:C10(Sin:C17(2)*10)
$test.expected:=Sin:C17(2)*10
$test.actual:=$math.sin(2)*10  // expected output: 9.092974268256818
$test.assert()

$test.given:="expression ((Math.PI)* 10) as argument"
$test.should:="return "+String:C10(Sin:C17($math.PI)*10)
$test.expected:=Sin:C17($math.PI)*10
$test.actual:=$math.sin($math.PI)*10  // expected output: 1.2246467991473533e-15
$test.assert()
