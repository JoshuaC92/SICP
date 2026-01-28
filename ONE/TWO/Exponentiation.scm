;Exponentiation via the recursive definition:

;bⁿ= b * bⁿ⁻¹,
;b⁰= 1

;Translated into scheme:

(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

; This will end up a linear recursive process requiring:
; Θ(n) steps
; Θ(n) space

(expt 3 1)
(* 3 (expt 3 0))

(expt 3 2)
(* 3 (expt 3 1))
(* 3 (* 3 (expt 3 0)))

;etc

; We can define a iterative process version of expt like so:

(define (expti b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                 (- counter 1)
                 (* b product))))

(expti 3 5)
(expt-iter 3 5 1)
(expt-iter 3 4 3)
(expt-iter 3 3 9)
(expt-iter 3 2 27)
(expt-iter 3 1 81)
(expt-iter 3 0 243)
243

; Θ(n) steps
; Θ(1) space
