//%attributes = {}
  // Is it really needed ?


C_REAL:C285($a;$b)

C_LONGINT:C283($c)
$a:=0x7FFFFFFF
$b:=0x7FFFFFFF
$c:=$a*$b  // result must be 1 !!!


If ($a<0)
	$aHi:=zero_fill_right_shift (($a >> 2))
Else 
	$aHi:=($a >> 16) & 0xFFFF
End if 
$aLo:=$a & 0xFFFF

If ($b<0)
	$bHi:=zero_fill_right_shift (($b >> 2))
Else 
	$bHi:=($b >> 16) & 0xFFFF
End if 
$bLo:=$b & 0xFFFF

  //---------------------------------------------------
$str_test:=LongInt2BinaryString ($aHi)
$aHi2:=$aHi >> 0
$str_test2:=LongInt2BinaryString ($aHi2)
  //---------------------------------------------------
  //---------------------------------------------------
$str_test:=LongInt2BinaryString ($aLo)
$aLo2:=$aLo >> 0
$str_test2:=LongInt2BinaryString ($aLo2)
  //---------------------------------------------------


  // the shift by 0 fixes the sign on the high part
  // the final |0 converts the unsigned value into a signed value
  //$result:=(($aLo*$bLo)+(((($aHi*$bLo)+($aLo*$bHi) << 16) >> 0) | 0)
$result:=($aLo*$bLo)+zero_fill_right_shift (($aHi*$bLo)+(($aLo*$bHi) << 16))
$result:=$result | 0

$str_result:=LongInt2BinaryString ($result)

