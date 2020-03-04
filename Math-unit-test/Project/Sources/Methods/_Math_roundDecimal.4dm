//%attributes = {"shared":true}
  // __UNIT_TEST

If (False:C215)
	  // Method: AJ_Tools_RoundDecimal
	  // Description
	  // This method can be used to round a value.
	  // $precision : The precision of the value that we want to round. Ex. 0.1, 0.5, 2, 0.01
	  // $roundType : The list of existing round type must use one of those constants:
	  //   ROUND_UP : Round UP away from 0 (<-0->)
	  //   ROUND_DOWN : Round DOWN toward 0 (->0<-)
	  //   ROUND_CEILING : Round UP (<-0<-)
	  //   ROUND_FLOOR : Round DOWN (->0->)
	  //   ROUND_HALF_UP : Round UP toward the nearest neighbor, round UP (<-0->) if equal distances to neighbors
	  //   ROUND_HALF_DOWN : Round DOWN toward the nearest neighbor, round DOWN (->0<-) if equal distances to neighbors
	  //   ROUND_HALF_CEILING : Round UP toward the nearest neighbor, round CEILING (<-0<-) if equal distances to neighbors
	  //   ROUND_HALF_FLOOR : Round DOWN toward the nearest neighbor, round FLOOR (->0->) if equal distances to neighbors
	  //   ROUND_HALF_EVEN : Round to the nearest neighbor, round to the EVEN neighbor if equal distances to neighbors
	  //
	  // Examples : 
	  //   AJ_Tools_RoundDecimal(1.222;0.1;"ROUND_UP") -> 1.3
	  //   AJ_Tools_RoundDecimal(-1.222;0.1;"ROUND_UP") -> -1.3
	  // 
	  //   AJ_Tools_RoundDecimal(1.222;0.1;"ROUND_DOWN") -> 1.2
	  //   AJ_Tools_RoundDecimal(-1.222;0.1;"ROUND_DOWN") -> -1.2
	  // 
	  //   AJ_Tools_RoundDecimal(1.222;0.1;"ROUND_CEILING") -> 1.3
	  //   AJ_Tools_RoundDecimal(-1.222;0.1;"ROUND_CEILING") -> -1.2
	  // 
	  //   AJ_Tools_RoundDecimal(1.222;0.1;"ROUND_FLOOR") -> 1.2
	  //   AJ_Tools_RoundDecimal(-1.222;0.1;"ROUND_FLOOR") -> -1.3
	  // 
	  //   AJ_Tools_RoundDecimal(1.25;0.1;"ROUND_HALF_UP") -> 1.3
	  //   AJ_Tools_RoundDecimal(-1.25;0.1;"ROUND_HALF_UP") -> -1.3
	  // 
	  //   AJ_Tools_RoundDecimal(1.25;0.1;"ROUND_HALF_DOWN") -> 1.2
	  //   AJ_Tools_RoundDecimal(-1.25;0.1;"ROUND_HALF_DOWN") -> -1.2
	  // 
	  //   AJ_Tools_RoundDecimal(1.25;0.1;"ROUND_HALF_CEILING") -> 1.3
	  //   AJ_Tools_RoundDecimal(-1.25;0.1;"ROUND_HALF_CEILING") -> -1.2
	  // 
	  //   AJ_Tools_RoundDecimal(1.25;0.1;"ROUND_HALF_FLOOR") -> 1.2
	  //   AJ_Tools_RoundDecimal(-1.25;0.1;"ROUND_HALF_FLOOR") -> -1.3
	  // 
	  //   AJ_Tools_RoundDecimal(1.25;0.1;"ROUND_HALF_EVEN") -> 1.2
	  //   AJ_Tools_RoundDecimal(-1.25;0.1;"ROUND_HALF_EVEN") -> -1.2
	  // 
	  //   AJ_Tools_RoundDecimal(1.15;0.1;"ROUND_HALF_EVEN") -> 1.2
	  //   AJ_Tools_RoundDecimal(-1.15;0.1;"ROUND_HALF_EVEN") -> -1.2
	  // 
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($math;$test)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("roundDecimal";Current method name:C684;"Math Round Decimal")

$test.given:="1.222, round up with 0.1 precision"
$test.should:="return 1.3"
$test.expected:=1.3
$test.actual:=$math.roundDecimal(1.222;0.1;"ROUND_UP")
$test.assert()

$test.given:="-1.222, round up with 0.1 precision"
$test.should:="return -1.3"
$test.expected:=-1.3
$test.actual:=$math.roundDecimal(-1.222;0.1;"ROUND_UP")
$test.assert()

$test.given:="1.222, round down with 0.1 precision"
$test.should:="return 1.2"
$test.expected:=1.2
$test.actual:=$math.roundDecimal(1.222;0.1;"ROUND_DOWN")
$test.assert()

$test.given:="-1.222, round down with 0.1 precision"
$test.should:="return -1.2"
$test.expected:=-1.2
$test.actual:=$math.roundDecimal(-1.222;0.1;"ROUND_DOWN")
$test.assert()

$test.given:="1.222, round ceiling with 0.1 precision"
$test.should:="return 1.3"
$test.expected:=1.3
$test.actual:=$math.roundDecimal(1.222;0.1;"ROUND_CEILING")
$test.assert()

$test.given:="-1.222, round ceiling with 0.1 precision"
$test.should:="return -1.2"
$test.expected:=-1.2
$test.actual:=$math.roundDecimal(-1.222;0.1;"ROUND_CEILING")
$test.assert()

$test.given:="1.222, round floor with 0.1 precision"
$test.should:="return 1.2"
$test.expected:=1.2
$test.actual:=$math.roundDecimal(1.222;0.1;"ROUND_FLOOR")
$test.assert()

$test.given:="-1.222, round floor with 0.1 precision"
$test.should:="return -1.3"
$test.expected:=-1.3
$test.actual:=$math.roundDecimal(-1.222;0.1;"ROUND_FLOOR")
$test.assert()

$test.given:="1.25, round half up with 0.1 precision"
$test.should:="return 1.3"
$test.expected:=1.3
$test.actual:=$math.roundDecimal(1.25;0.1;"ROUND_HALF_UP")
$test.assert()

$test.given:="-1.25, round half up with 0.1 precision"
$test.should:="return -1.3"
$test.expected:=-1.3
$test.actual:=$math.roundDecimal(-1.25;0.1;"ROUND_HALF_UP")
$test.assert()

$test.given:="1.25, round half down with 0.1 precision"
$test.should:="return 1.2"
$test.expected:=1.2
$test.actual:=$math.roundDecimal(1.25;0.1;"ROUND_HALF_DOWN")
$test.assert()

$test.given:="-1.25, round half down with 0.1 precision"
$test.should:="return -1.2"
$test.expected:=-1.2
$test.actual:=$math.roundDecimal(-1.25;0.1;"ROUND_HALF_DOWN")
$test.assert()

$test.given:="1.25, round half ceiling with 0.1 precision"
$test.should:="return 1.3"
$test.expected:=1.3
$test.actual:=$math.roundDecimal(1.25;0.1;"ROUND_HALF_CEILING")
$test.assert()

$test.given:="-1.25, round half ceiling with 0.1 precision"
$test.should:="return -1.2"
$test.expected:=-1.2
$test.actual:=$math.roundDecimal(-1.25;0.1;"ROUND_HALF_CEILING")
$test.assert()

$test.given:="1.25, round half floor with 0.1 precision"
$test.should:="return 1.2"
$test.expected:=1.2
$test.actual:=$math.roundDecimal(1.25;0.1;"ROUND_HALF_FLOOR")
$test.assert()

$test.given:="-1.25, round half floor with 0.1 precision"
$test.should:="return -1.3"
$test.expected:=-1.3
$test.actual:=$math.roundDecimal(-1.25;0.1;"ROUND_HALF_FLOOR")
$test.assert()

$test.given:="1.25, round half even with 0.1 precision"
$test.should:="return 1.2"
$test.expected:=1.2
$test.actual:=$math.roundDecimal(1.25;0.1;"ROUND_HALF_EVEN")
$test.assert()

$test.given:="-1.25, round half even with 0.1 precision"
$test.should:="return -1.2"
$test.expected:=-1.2
$test.actual:=$math.roundDecimal(-1.25;0.1;"ROUND_HALF_EVEN")
$test.assert()

$test.given:="1.15, round half even with 0.1 precision"
$test.should:="return 1.2"
$test.expected:=1.2
$test.actual:=$math.roundDecimal(1.15;0.1;"ROUND_HALF_EVEN")
$test.assert()

$test.given:="-1.15, round half even with 0.1 precision"
$test.should:="return -1.2"
$test.expected:=-1.2
$test.actual:=$math.roundDecimal(-1.15;0.1;"ROUND_HALF_EVEN")
$test.assert()

$test.given:="1.231257, round up with 0.125 precision"
$test.should:="return 1.25"
$test.expected:=1.25
$test.actual:=$math.roundDecimal(1.231257;0.125;"ROUND_UP")
$test.assert()

$test.given:="1.00001, round up with 0.125 precision"
$test.should:="return 1.125"
$test.expected:=1.125
$test.actual:=$math.roundDecimal(1.00001;0.125;"ROUND_UP")
$test.assert()

$test.given:="1.123456789, round up with 0.00567 precision"
$test.should:="return 1.12833"
$test.expected:=1.12833
$test.actual:=$math.roundDecimal(1.123456789;0.00567;"ROUND_UP")
$test.assert()