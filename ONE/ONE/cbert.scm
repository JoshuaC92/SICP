#lang sicp


(define (square x)
    (* x x))


(define (good-enough? guess new-guess)
  (< (abs (/ (- guess new-guess) 
             new-guess))
     0.00000001))


(define (average x y)
  (/ (+ x y) 2))


(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))


(define (cubert-iter guess x)
  (if (good-enough? guess (improve guess x)) 
      (improve guess x)
      (cubert-iter (improve guess x) x)))


(define (curt x)
  (sqrt-iter 1.0 x))
