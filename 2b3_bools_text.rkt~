;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2b3_bools_text) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp")))))
(or false false false true)
(define b1 true)
(define b2 false)

; Create an expression that computes whether b1 is false 
; or b2 is true. So in this particular case, the answer
; is false. 
(or (equal? b1 false) (equal? b2 true))
; yep, but make it simpler

(or b1 b2)
; nay.

(or (not b1) b2)
; yay.

; begin cat stuff
"cat"
(define cat .)

(define (wat image)
  (if (< (image-width image) 
         (image-height image)) 
         "skinny" "fat"))

(wat cat)
(define square-pic .)

(define wat2
  (lambda (image)
    (cond [(< (image-width image) 
              (image-height image)) "skinny"]
          [(> (image-width image) 
              (image-height image)) "fat"]
          [(= (image-width image) 
              (image-height image))"boxy"])))
(wat2 square-pic)

; create an expression that converts 
; whatever in represents to a number. 
; For a string, it determines string length; 
; for an image, it uses the area; 
; for a number, it decrements the number, 
; unless it is already 0 or negative; 
; for true it uses 10 and for false 20.
