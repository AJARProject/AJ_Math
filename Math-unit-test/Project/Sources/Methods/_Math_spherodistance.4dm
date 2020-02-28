//%attributes = {"shared":true}
  // __UNIT_TEST

  // _Math_spherodistance


If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 26.02.20, 12:52:57
	  // ----------------------------------------------------
	  // Method: _Math_spherodistance
	  // Description
	  // 
	  //
	  // Parameters
	  // ----------------------------------------------------
End if 


C_OBJECT:C1216($math)
$math:=Math ()

$test:=New AJ_Tools_UT_describe ("spherodistance";Current method name:C684;"Test Math formula")
$test.given:="no Radius parameter set local"  //59.3293371,13.4877472,59.3225525,13.461942
$test.should:="return 1.646803375856 km"  //1.6 km // 2.961711431589
$test.expected:=1.646803375856
$test.actual:=$math.spherodistance(New object:C1471("latitude1";59.3293371;"longitude1";13.4877472;"latitude2";59.3225525;"longitude2";13.461942))
$test.assert()

  // between BigBen London and statue of Liberty New york
$test.given:="Between BigBen London and statue of Liberty New york"
$test.should:="return 5567.660292921 km"  //5567.660292921
$test.expected:=5567.660292921
$test.actual:=$math.spherodistance(New object:C1471("latitude1";51.5007;"longitude1";-0.1246;"latitude2";40.6892;"longitude2";-73.935242))
$test.assert()

  // between Milan and statue of Liberty New york
$test.given:="between Milan and statue of Liberty New york"
$test.should:="return 5149.995533938 km"  //5149.995533938
$test.expected:=5149.995533938
$test.actual:=$math.spherodistance(New object:C1471("latitude1";45.46427;"longitude1";9.18951;"latitude2";40.6892;"longitude2";74.0445))
$test.assert()

  // between Geneva and Washington
$test.given:="no Radius parameter set"
$test.should:="return 5637.518685164km"  //5637.518685164
$test.expected:=5637.518685164
$test.actual:=$math.spherodistance(New object:C1471("latitude1";46.12;"longitude1";6.9;"latitude2";38.53;"longitude2";77.02))
$test.assert()

  //
$test.given:="distance with radius parameter set to 1000 km"
$test.should:="return 2112.508770729 km"
$test.expected:=2112.508770729
$test.actual:=$math.spherodistance(New object:C1471("latitude1";-50.81;"longitude1";10.35;"latitude2";40.98;"longitude2";-80.53;"radius";1000))
$test.assert()

$test.given:="distance with no radius parameter -50.81,10.35,40.98,-80.53"
$test.should:="return 13458.79337831 km"
$test.expected:=13458.79337831
$test.actual:=$math.spherodistance(New object:C1471("latitude1";-50.81;"longitude1";10.35;"latitude2";40.98;"longitude2";-80.53))
$test.assert()