(define (square a) (* a a))

(define (sum-of-square a b) (+ (square a) (square b)))

(define (func-one x y z)
  (cond ((and (> x z) (> y x)) (sum-of-square x y))
        ((and (> x y) (> z y)) (sum-of-square x z))
        ((and (> y x) (> z x)) (sum-of-square y z))))

(func-one 3 4 5)
