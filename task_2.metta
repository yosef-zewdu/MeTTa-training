(= (fibonacci-even-sum $a $b $limit)

(if (< $a $limit)

    (if  (== (% $a 2) 0)
        (+ $a (fibonacci-even-sum($b (+ $a $b) $limit))) 
        fibonacci-even-sum($b (+ $a $b) $limit)
    )
0
)

)

(= (sum-even $limit)
    (
        fibonacci-even-sum(1 2 $limit)
    )
)

!(sum-even 100)