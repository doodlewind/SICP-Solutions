; 递归
(define (pascal row col)
    (cond ((or (= col 0) (= col row)) 1)
          (else (+ (pascal (- row 1) (- col 1))
                   (pascal (- row 1) col)))))

; 迭代
; (define (factorial n)
;     (fac-iter 1 1 n))

; (define (fac-iter product count max-count)
;     (if (> count max-count)
;         product
;         (fac-iter (* product count)
;                   (+ count 1)
;                   max-count)))

; (define (pascal row col)
;     (/ (factorial row)
;        (* (factorial col)
;           (factorial (- row col)))))

(pascal 4 2)
