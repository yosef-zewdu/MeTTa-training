(= (multiples-sum $n)

; This is the base case of the recursion.
; The if statement checks whether $n is greater than 1.
; If $n > 1, the recursion continues.
; If $n <= 1, the recursion stops, and the function returns 0
; Second if statement checks if the nuber is multiple of 3 or 5
; If it is, it adds the number and goes to the next number. 


  (if (> $n 1)
    (if (or (== (% (- $n 1) 3) 0) (== (% (- $n 1) 5) 0)) 
        (+ (- $n 1) (multiples-sum (- $n 1))) 
        (multiples-sum (- $n 1)) 
    ) 
    0 
  )
)
! (multiples-sum 10)