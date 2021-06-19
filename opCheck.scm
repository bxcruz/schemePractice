;practice making a function that takes in a binary op
;and turns it into a string to compare ops

;no need to convert a binary op to a string or anything, just compare directly

(define (opchk op)
        
        (if (equal? op <) (display "same op") (display "different op"))
)


;DRIVER TEST CODE
(opchk <)