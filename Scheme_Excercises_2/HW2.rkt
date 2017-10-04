;Write a tail-recursive function to compute the length of an arbitrary list.
(define (listSize lst) (count lst 0))
(define (count lst result)
  (if (null? lst) result
      (count (cdr lst) (+ 1 result))))

(listSize '(0 1 2 3))

;Write a function that computes the maximum and minimum of a list of integers.
(define (minmax lst) (list (min1 lst) (max1 lst)))
(define (min1 lst) (minHelper lst (car lst)))
(define (minHelper lst minNum)
  (cond [(null? lst) minNum]
        [(< (car lst) minNum) (minHelper (cdr lst) (car lst))]
        [else (minHelper (cdr lst) minNum)]))
(define (max1 lst) (maxHelper lst (car lst)))
(define (maxHelper lst maxNum)
  (cond [(null? lst) maxNum]
        [(> (car lst) maxNum) (maxHelper (cdr lst) (car lst))]
        [else (maxHelper (cdr lst) maxNum)]))

(minmax '(1 5 4 9))

;Write Mergesort for a list of integers.
(define (merge-sort lst) ())

;Bonus: A Pythagorean triple is a tuple of integers (x, y, z) such that x * x + y * y = z * z.
;       Write a function with a parameter n to print all Pythagorean triples such that 1 ≤ x ≤ y ≤ z ≤ n.
;Bonus: Can you speed it up significantly? Use the time function to do check your solutions.