#lang sicp

(define (row n)
      (ceiling (/ (+ -1
                     (sqrt (+ 1 (* 8 n))))
                  2)))

(define (col r n)
  (- n
     (/ (* (- r 1) r)
        2)))

(define (pascals n)
  (pascals-main (row n) (col (row n) n)))

(define (pascals-main row col)
  (cond ((or (= row 1) (= col 1) (= row col)) 1)
        (else (+ (pascals-main (- row 1) (- col 1))
                 (pascals-main (- row 1) col)))))
