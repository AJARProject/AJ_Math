//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_Properties
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 11.02.20, 10:50:03
	  // ----------------------------------------------------
	  // Method: _Math_Properties_Degree
	  // Description
	  // Unit test 
	  // Degree returns one degree expressed in radians (0.01745...)
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($o)
$o:=Math ()

$test:=New AJ_Tools_UT_describe ("Degree";Current method name:C684;"Test Math properties")


$test.given:="no argument"
$test.should:="return "+String:C10(Degree:K30:2)
$test.expected:=Degree:K30:2
$test.actual:=$o.Degree()
$test.assert()

