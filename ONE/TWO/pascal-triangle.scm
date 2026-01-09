1                              1                   1
2                            1   1                 2-3
3                          1   2   1               4-6
4                        1   3   3   1             7-10
5                      1   4   6   4   1           11-15
6                    1   5   10  10  5   1         16-21
7                  1   6   15  20  15  6   1       22-28
8                1   7   21  35  35  21  7   1     29-36
9              1   8   28  56  70  56  28  8   1   37-45

(define (pascals-main row col)
  (cond ((or (= row 1) (= col 1) (= row col)) 1)
        (else (+ (pascals-main (- row 1) (- col 1))
                 (pascals-main (- row 1) col)))))

(pascals-main 9 8)

(+ (pascals-main 8 7) 1)
(+ (+ (pascals-main 7 6) 1) 1)
(+ (+ (+ (pascals-main 6 5) 1) 1) 1)
(+ (+ (+ (+ (pascals-main 5 4) 1) 1) 1) 1)

etc...

