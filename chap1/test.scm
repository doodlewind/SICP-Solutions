(define (factorial n)
    (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* counter product)
                   (+ counter 1)
                   max-count)))
; (factorial 5)

(define (fib n)
    (fib-iter 1 0 n))

(define (fib-iter a b count)
    (if (= 0 count)
        b
        (fib-iter (+ a b) a (- count 1))))

; (fib 10)