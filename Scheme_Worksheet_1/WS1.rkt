;WOKRSHEET 1

(require racket/trace)

(define (make_list_of_size n e)
  (if(not(equal? n 0)) (cons e (make_list_of_size (- n 1) e))()))
(make_list_of_size 5 5)

(define (zeros lst n)
  (cond [(null? lst) n]
        [(= 0 (first lst)) (zeros (rest lst) (+ 1 n))]
        [else (zeros (rest lst) (+ 0 n))]))    
(zeros '(0 0 0 0 1 2) 0)


(define (power x y)
    (cond [(= y 0) 1]
          [(> y 0) (* (power x (- y 1)) x)]))
(power 3 1)

(define (remove1 lst a)
  (cond [(null? lst) '()]
        [(equal? (car lst) a) (remove1 (cdr lst) a)]
        [else (cons (car lst) (remove1 (cdr lst) a))]))
(remove1 '(r 2 (r r) r 2) 'r)

(define (largest lst)
    (cond ((null? (cdr lst)) (car lst))
          ((> (car lst) (largest (cdr lst))) (car lst))
          (else (largest (cdr lst)))) )
(largest '(0 0 0 1))