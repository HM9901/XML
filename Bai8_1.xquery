(: for $i in 1 to 100
return <test> {$i}^2 ={$i * $i}</test> :)

avg (
for $x at $i in ( 1 ,2, 3, 4, 5, 6, 7, 8, 9, 10)
where $i mod 2 = 0 
return $x )