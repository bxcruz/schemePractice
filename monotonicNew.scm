;redo monotonic 
;no need to check with strings, does it with subroutines
;see type op: #<subr X>, where X can be <, >, <=, >=
;more elegant
(define (isMonotonic op list)
        (cond 
                  [(null? list) (display "true, empty lists are monotonic")]
                  [(null? (cdr list)) (display "this list is monotonic")]
                  [(equal? op >) (if (<= (car list) (cadr list)) 
                                       (display #f) (isMonotonic  op (cdr list)) )]
                  [(equal? op <) (if (>= (car list) (cadr list)) 
                                       (display #f) (isMonotonic  op (cdr list)) )]
                  [(equal? op >=) (if (< (car list) (cadr list)) 
                                        (display #f) (isMonotonic  op (cdr list)) )]
                  [(equal? op <=) (if (> (car list) (cadr list)) 
                                        (display #f) (isMonotonic  op (cdr list)) )]
            )
)


;DRIVER TEST CODE
(define listObj '(1 2 2 3))

(isMonotonic <= listObj)
(newline)

(isMonotonic >= listObj)
(newline)

(isMonotonic < listObj)
(newline)

(isMonotonic > listObj)
(newline)

(isMonotonic > '())
(newline)
(isMonotonic < '())
(newline)
(isMonotonic >= '())
(newline)
(isMonotonic >= '())
(newline)