<!-- AJ_Math.new ( ) -> instance of Math class  -->



## Description

Exposes the Math class at the host base. Replace Math since V18R3

```4d
  AJ_Math.new ( ) -> instance
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| instance | object | out | Instance of Math class with the formulas |

## Example

```
  C_Object ($math)
  C_REAL($value)
  
  $math:=AJ_Math.new()
  
  //value 1.2
  $value:=$math.roundDecimal(1.222;0.1;"ROUND_DOWN")
  //value 1.3
  $value:=$math.roundDecimal(1.222;0.1;"ROUND_UP")
  
  //value 45
  $value:=$math.toDegrees(0.7853981633975)
  
  //random number between 0 and 1
  $value:=$math.random()
  
  //value 12
  $value:=$math.abs(-12)
  
  //value 3
  $value:=$math.max(New collection(1;3;2))
```