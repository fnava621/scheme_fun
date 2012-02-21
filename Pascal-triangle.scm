;;Returns specific  values for pascal triangle for that row and column.  Row and column start at 0 0)
(define (pascal-triangle row column)
  (cond ((or (= row column) (= column 0) 1))
        ((< row column) #f)
        (else (+ (pascal-triangle (- row 1) column) 
                 (pascal-triangle (- row 1) (- column 1))))))

;; ex. (pascal-triangle 4 4) => 1


;;Gives you a all values  of the row as a list.

(define (pascal-row row)
  (define (iter row column result)
    (cond ((= column 0) (append (list 1) result))
          (else (iter row (- column 1) 
		      (cons (pascal-triangle row column) result)))))
  (iter row row nil))

;; Ex (pascal-row-coumn 2) => (1 2 1)


;; Gives you all outputs for pascall triangle from 0 to row.

(define (show-pascal-triangle row)
  (define (iter x result)
    (display (pascal-row result))
    (newline)
    (cond ((= x 0) (newline))
          (else(iter (- x 1) (+ result 1)))))
  (iter row 0))

;;; Ex.  (show-pascal-triangle 3)

;(1)
;(1 1)
;(1 2 1)
;(1 3 3 1)
