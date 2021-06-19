;binary search program using no left or right
;algo: start at array length l/2, then check to 
;see if desired value is to the left or right of 
;the partition selected (if smaller than the
;value in the middle, move left, otherwise, 
;move right)

;USE RECURSION for faster running algo

;GET LEFT HAND SIDE OF LIST
;(display (take '(1 2 3 4 5) 2)) ;left hand: returns (1 2)

;GET RIGHT HAND SIDE OF LIST
;(display (drop '(1 2 3 4 5) 2)) ;right hand: returns (3 4 5)

(define (binarySearch key list)

    (define middleIndex (floor (/ (length list) 2)) )
    (define middleVal (car (drop list middleIndex))) ;same function as below v
    ;(define middleVal (list-ref list middleIndex))  ;same function as above ^
    
    ;BLOCK COMMENT: encapsulate between #| |#
    ;below: testing what values come out of the list
    ;for each recursive call 
    
    #|(display key)
    (display " ")
    (display middleVal)
    (display "\n")
    (display list)
    (display "\n")|#

    (if (null? list) (display #f)
        (cond
              [(eq? key middleVal) (display (cadr list))]
              [(< key middleVal) (binarySearch key (take list middleIndex))]
              [(> key middleVal) (binarySearch key (drop list middleIndex))]
              [(null? (cdr list)) #f]
              [else #f]
            
        )
    )
)


(define alist '(1 2 3 5 7 9 11 15 19 22 23 25 26 28 29 31 34 35 36 40 42 45 47 48 49 51 52 53))

(binarySearch 34 alist)