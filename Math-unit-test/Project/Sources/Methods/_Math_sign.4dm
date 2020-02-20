//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_sign
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 14:43:16
	  // ----------------------------------------------------
	  // Method: _Math_sign
	  // Description
	  // The Math.sign() function returns either a positive
	  // or negative +/- 1, indicating the sign of a number
	  // passed into the argument. If the number passed into
	  // Math.sign() is 0, it will return a +/- 0. Note that
	  // if the number is positive, an explicit (+) will not
	  // be returned.
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math)
$math:=Math ()


C_OBJECT:C1216($test)
$test:=New AJ_Tools_UT_describe ("sign";Current method name:C684;"Test Math formula")

$test.given:="no argument"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.sign()
$test.assert()

$test.given:="1+1"
$test.should:="return 1"
$test.expected:=1
$test.actual:=$math.sign(1+1)
$test.assert()

$test.given:="10-13"
$test.should:="return -1"
$test.expected:=-1
$test.actual:=$math.sign(10-13)
$test.assert()

$test.given:="0"
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.sign(0)
$test.assert()

$test.given:="\"-3\""
$test.should:="return -1"
$test.expected:=-1
$test.actual:=$math.sign("-3")
$test.assert()

$test.given:="\"foo\""
$test.should:="return 0"
$test.expected:=0
$test.actual:=$math.sign("foo")
$test.assert()
