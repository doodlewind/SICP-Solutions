; 递归
(define (f n)
    (cond ((> n 2) (+ (f (- n 1))
                      (* 2 (f (- n 2)))
                      (* 3 (f (- n 3)))))
          (else n)))

; 迭代
(define (f n)
    (f-iter 2 1 0 0 n))

(define (f-iter a b c i n)
    (if (= i n)
        c
        (f-iter (+ a (* 2 b) (* 3 c))
                a
                b
                (+ i 1)
                n)))

(f 4)