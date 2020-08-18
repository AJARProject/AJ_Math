//%attributes = {}
  // getClassName ( myClass ) -> className
  //
  // myClass : (object) class
  // className : (text) name of the class

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 20.02.20, 09:25:27
	  // ----------------------------------------------------
	  // Method: getClassName
	  // Description
	  // 
	  //
	  // Parameter
	  // myClass is an object and you want to get
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$myClass)
$myClass:=$1
$name:=$myClass[""]

$t:=AJ_Math_info 