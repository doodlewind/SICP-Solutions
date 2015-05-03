; 由于精度问题，浮点数能够表示的位数是有限的。相应地对于大数，就无法保证足够的精度。
; 若 good-enough 的精度要求小于大数的最小分度，那么就永远无法获得足够的精度了。
; 对于太小的数，good-enough 固定的精度要求会造成误差过大。

(define (good-enough? guess x)
    (< (abs (- 1 (/ (improve guess x) guess))) 0.001))
