//%attributes = {"shared":true}
  // __UNIT_TEST


  // _Math_random
  //

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 19.02.20, 12:57:41
	  // ----------------------------------------------------
	  // Method: _Math_random
	  // Description
	  // The Math.random() function returns a floating-point,
	  // pseudo-random number in the range 0 to less than 1 
	  // (inclusive of 0, but not 1) with approximately
	  // uniform distribution over that range — which you
	  // can then scale to your desired range. The
	  // implementation selects the initial seed to the
	  // random number generation algorithm; it cannot be
	  // chosen or reset by the user.
	  //
	  // No Parameters
	  // ----------------------------------------------------
End if 

$math:=Math ()

$test:=New AJ_Tools_UT_describe ("random";Current method name:C684;"Test Math formula")

$test.given:="Getting a random number between 0 (inclusive) and 1 (exclusive)"
$test.actual:=$math.random()
$test.should:="return "+String:C10($test.actual)
$test.expected:=$test.actual
$test.assert()

