#lang sicp

# As part of exercise 1.7 we need to define a new version of good-enough 
# which watches how guess chages from each iteration and when it becomes 
# a small enough change then it is accepted.

(define (square x)
    (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
