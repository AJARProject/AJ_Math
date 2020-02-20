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
	  // The Math.tan() function returns the tangent of a number
	  // specified in radians. 
	  // This value is (length opposite / length adjacent)
	  // 
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("tan";Current method name:C684;"Test Math formula")


$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.tan()
$test.assert()

$test.given:="expression (0 * Math.PI/180) as argument"
$test.should:="return "+String:C10(Tan:C19(0*$math.PI/180))
$test.expected:=Tan:C19(0*$math.PI/180)
$test.actual:=$math.tan(0*$math.PI/180)  // expected output: 0
$test.assert()

$test.given:="expression (45 * Math.PI/180) as argument"
$test.should:="return "+String:C10(Tan:C19(45*$math.PI/180))
$test.expected:=Tan:C19(45*$math.PI/180)
$test.actual:=$math.tan(45*$math.PI/180)  // expected output: 0.9999999999999999
$test.assert()

$test.given:="expression (90 * Math.PI/180) as argument"
$test.should:="return "+String:C10(Tan:C19(90*$math.PI/180))
$test.expected:=Tan:C19(90*$math.PI/180)
$test.actual:=$math.tan(90*$math.PI/180)  // expected output: 16331239353195370
$test.assert()

$test.given:="expression (50 * Math.PI/180) as argument"
$test.should:="return "+String:C10(Tan:C19(50*$math.PI/180))
$test.expected:=Tan:C19(50*$math.PI/180)
$test.actual:=$math.tan(50*$math.PI/180)  // expected output: 1.1917535925942098
$test.assert()

$test.given:="expression (60 * Math.PI/180) as argument"
$test.should:="return "+String:C10(Tan:C19(60*$math.PI/180))
$test.expected:=Tan:C19(60*$math.PI/180)
$test.actual:=$math.tan(60*$math.PI/180)  // expected output: 1.7320508075688767
$test.assert()
