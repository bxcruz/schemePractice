;fibonacci function

(define (fib n)
    (if (<= n 2) 
                 1 
                 (+  (fib (- n 1)) (fib (- n 2)))
    )
)


;driver code
(display (fib 3))
(newline)
(display (fib 4))
(newline)
(display (fib 5))
(newline)
(display (fib 6))
(newline)
(display (fib 7))