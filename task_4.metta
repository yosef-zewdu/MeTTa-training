; Define addition function
(= (addtwo $x $y) (+ $x $y))

; an empty list returns an empty list as base case
(= (binary-map $f $const ()) ())

; Recursive: apply $f to the head and the constant, then goes to the tail
(= (binary-map $f $const (:: $x $xs))
   (:: ($f $x $const) (binary-map $f $const $xs)))


! (binary-map addtwo 20 (:: 1 (:: 2 (:: 3 ()))))
