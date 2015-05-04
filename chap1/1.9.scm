; 第一种是线性递归的，inc 的计算轨迹被积累了起来
; (inc (inc (inc (inc (inc (+ 0 5))))))
; 
; 第二种是迭代的，参数在传入时立刻执行 inc 与 dec
; (+ (dec 4) (inc 5))
; (+ (dec 3) (inc 6))