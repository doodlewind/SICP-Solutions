(define (count-exchange x)
    (cc x 5))

(define (cc amount kind-of-coins)
    (cond ((= 0 amount) 1)
          ((or (< amount 0) (= kind-of-coins 0)) 0)
          (else (+ (cc amount
                       (- kind-of-coins 1))
                   (cc (- amount
                          (first-denomination kind-of-coins))
                       kind-of-coins)))))

(define (first-denomination kind-of-coins)
    (cond ((= kind-of-coins 1) 1)
          ((= kind-of-coins 2) 5)
          ((= kind-of-coins 3) 10)
          ((= kind-of-coins 4) 25)
          ((= kind-of-coins 5) 50)))

(count-exchange 100)