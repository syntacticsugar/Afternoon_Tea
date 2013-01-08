 ; (defun aha (n) (loop repeat n collect (nth (random 2) '(ah ha))))

 (define (giggle n) (if (= n 0) '() (cons (list-ref '(ah ha) (random 2)) (giggle (- n 1)))))
