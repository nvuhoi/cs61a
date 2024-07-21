(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  (define (enumerate-helper s index)
    (cond
      ((null? s) '())
      (else (cons (list index (car s))
                  (enumerate-helper (cdr s) (+ index 1))))))
  (enumerate-helper s 0))
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists S1 and S2 according to ORDERED? and return
;; the merged lists.
(define (merge ordered? s1 s2)
  ; BEGIN PROBLEM 16
  (define (merge-helper s1 s2)
    (cond
      ((null? s1) s2)
      ((null? s2) s1)
      ((ordered? (car s1) (car s2))
       (cons (car s1) (merge-helper (cdr s1) s2)))
      (else
       (cons (car s2) (merge-helper s1 (cdr s2))))))
  (merge-helper s1 s2))
  ; END PROBLEM 16

