(define (max-two-sum-of-three a b c)
	(cond ((and (< c a) (< c b)) (+ a b))
		  ((and (< a b) (< a c)) (+ b c))
		  (else (+ a c))))

(max-two-sum-of-three 3 1 3)