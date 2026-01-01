#lang sicp

; 0 1 1 2 3 5 8 13 21 34 55 etc ad nauseum

(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b 
      (fib-iter (+ a b) a (- count 1))))


