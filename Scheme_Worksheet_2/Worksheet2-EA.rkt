#lang racket
;Write a function that increments each element of LIS by one, and return that as a new list
(define (inc1 lst)
  (if (null? lst) '()
      (cons (+ 1 (car lst))
            (inc1 (cdr lst)))))
(inc1 '(1 2 3))

;Write a function that sums the numbers from 1 to n
(define (add n n2)
  (if (zero? n) n2
      (add (- n 1) (+ n n2))))
(add 5 0)

;Write quicksort

;Write a function that sums all the elements in a list
(define (sumList lst)
  (if (null? lst) 0
      (+ (car lst) (sumList (cdr lst)))))

(sumList '(2 4 4))

;Write a function that counts all the atoms in a list where the list can have nested lists (e.g., ‘(1 (2 (3)) (5)) has 4 atoms in it, so that would be the return value)
(define (countAtoms lst)
  (cond
    ((null? lst) 0)
    ((list? (car lst)) (+ 1 (countAtoms (car lst))))
    (else (+ 1 (countAtoms (cdr lst))))))
(countAtoms '(1 (2 (3)) (5)))

;Write a function that takes two lists and returns -1 if both lists are empty and returns the length of the longest list otherwise.
(define (longestList lst1 lst2)
  (cond
    ((null? lst1) (null? lst2) -1)
    ((> (length lst1) (length lst2) lst1))
    (else lst2)))
(longestList '() '())

;Write a function that swaps the first two elements in a list.
(define (swapFT lst)
  (cons
   (cadr lst) (cons (car lst) (cddr lst))))
(swapFT '(2 1 3 4 5))

;Because I still don't fully understand the concepts of this class...