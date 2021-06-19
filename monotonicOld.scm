;compares using string inputs. not as elegant as simply
;passing through a raw binary operator

(define (monotonicCheck op list)
            (cond 
                  [(null? list) (display "true, empty lists are monotonic")]
                  [(null? (cdr list)) (display "this list is monotonic")]
                  [(equal? op ">") (if (<= (car list) (cadr list)) 
                                       (display #f) (monotonicCheck  op (cdr list)) )]
                  [(equal? op "<") (if (>= (car list) (cadr list)) 
                                       (display #f) (monotonicCheck  op (cdr list)) )]
                  [(equal? op ">=") (if (< (car list) (cadr list)) 
                                        (display #f) (monotonicCheck  op (cdr list)) )]
                  [(equal? op "<=") (if (> (car list) (cadr list)) 
                                        (display #f) (monotonicCheck  op (cdr list)) )]
            )
)

;DRIVER TEST CODE
(define listObj '(1 2 2 3))
(monotonicCheck "<=" listObj)
(newline)

(monotonicCheck ">=" listObj)
(newline)

(monotonicCheck "<" listObj)
(newline)

(monotonicCheck ">" listObj)
(newline)

(monotonicCheck ">" '())
(newline)
(monotonicCheck "<" '())
(newline)
(monotonicCheck ">=" '())
(newline)
(monotonicCheck ">=" '())
(newline)

(define (opchk op)
        (if (equal? op "<") #t #f)
)