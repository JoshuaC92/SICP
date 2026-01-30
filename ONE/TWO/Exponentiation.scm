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
(* 3 1)
3

(expt 3 2)
(* 3 (expt 3 1))
(* 3 (* 3 (expt 3 0)))
(* 3 (* 3 1))
(* 3 3)
9

(expt 3 5)
(* 3 (expt 3 4))
(* 3 (* 3 (expt 3 3)))
(* 3 (* 3 (* 3 (expt 3 2))))
(* 3 (* 3 (* 3 (* 3 (expt 3 1)))))
(* 3 (* 3 (* 3 (* 3 (* 3 (expt 3 0)))))
(* 3 (* 3 (* 3 (* 3 (* 3 1)))))
(* 3 (* 3 (* 3 (* 3 3))))
(* 3 (* 3 (* 3 9)))
(* 3 (* 3 27))
(* 3 81)
243

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

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(fast-expt 3 5)
(* 3 (fast-expt 3 4))
(* 3 (square (fast-expt 3 2)))
(* 3 (square (square (fast-expt 3 1))))
(* 3 (square (square (* 3 (fast-expt 3 0)))))
(* 3 (square (square (* 3 1)))))
(* 3 (square (square 3)))
(* 3 (square 9))
(* 3 81)
243

;when raising 3 to the 5th power, fast-expt is 1 step shorter and 1 space shorter
