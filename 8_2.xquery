for $i in doc("people.xml")/famousPeople/people
where (number(substring($i/died,1,4))  - number(substring($i/born,1,4))) > 70
order by $i descending
return $i