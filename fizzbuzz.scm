
;After a fair bit of trial and error I've discovered that people who struggle to;code don't just struggle on big problems, or even smallish problems (i.e. write a implementation of a linked list). They struggle with tiny problems.
;So I set out to develop questions that can identify this kind of developer and ;came up with a class of questions I call "FizzBuzz Questions" named after a gam;e children often play (or are made to play) in schools in the UK. An example of a Fizz-Buzz question is the following:

;Write a program that prints the numbers from 1 to 100. But for multiples of thr;ee print "Fizz" instead of the number and for the multiples of five print "Buzz;". For numbers which are multiples of both three and five print "FizzBuzz".

; Can I have a job now?


(define (fizzbuzz)
  (define (iter z count)
    (display count)
    (newline)
    (cond ((= z 100) 'fizzbuzz)
          ((and (= (remainder z 3) 0) 
                (= (remainder z 5) 0)) 
           (iter (+ 1 z) 'fizzbuzz))
          ((= (remainder z 3) 0) (iter (+ 1 z) 'fizz))
          ((= (remainder z 5) 0) (iter (+ 1 z) 'buzz))
          (else (iter (+ 1 z) z))))
  (iter 2 1))

;; Another Version that takes two arguements and gives you FIZZBUZZ for all numbers in the range.

(define (fizzbuzz start end )
  (define (iter start count)
    (display count)
    (newline)
    (cond ((eq? start (+ end 1)) nil)
          ((and (= (remainder start 3) 0) (= (remainder start 5) 0))
           (iter (+ start 1) 'fizzbuzz))
          ((= (remainder start 3) 0) (iter (+ start 1) 'fizz))
          ((= (remainder start 5) 0) (iter (+ start 1) 'buzz))
          (else (iter (+ start 1) start))))
  (iter (+ start 1) start))
                                   