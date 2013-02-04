;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2c_222) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp")))))
; Exercise 15: Define the function string-first, which extracts 
; the first character from a non-empty string. Don’t worry 
; about empty strings.
; Exercise 16: Define the function string-last, which extracts 
; the last character from a non-empty string. Don’t worry 
; about empty strings.
(define (string-first rainbow) 
  (string-ith rainbow 0)  )

(string-first "rainbow")
(string-first "norway")

(define (string-last rainbow)
  (string-ith rainbow (- (string-length rainbow) 1)))

(string-last "rainbow")
(string-last "norway")

; Exercise 17: Define the function bool-imply. 
; It consumes two Boolean values, call them b1 and b2. 
; The answer of the function is true if 
; b1 is false or b2 is true. Note: Logicians call this imply 
; and often they use the symbol => for this purpose.
; While BSL could define a function with this name, 
; we avoid the name because it is too close to the 
; comparison operations for numbers <= and >=, and it would 
; thus easily be confused.
(define b1 true)
(define b2 false)
(define (bool-imply b1 b2)
  (or (not b1) b2))

(bool-imply b1 b2)
; note to self: VERY VERY important.  I learned how to refactor
; "if (condition) true, otherwise FALSE" with (or...
; I recognize this behaviour in Ruby, also! :D
; Thu Jan 10th.  (after messing with weird booleans and
; trying to learn objectionable sign language from Dpeter)

; Exercise 21: Define the function string-insert, 
; which consumes a string and a number i and which 
; inserts "_" at the ith position of the string. 
; Assume i is a number between 0 and the length 
; of the given string (inclusive). 
   
; ex (string-insert "poptarts" 4) -> "popt_arts"
; i guess if I did this in javascript, it would be:
; function stringInsert(string,i)}
;  var ith = string[i];
;   return string.substring(0, i) + "_" + string.substring(i);
;}

(define (string-insert rainbow i)
  (string-append (substring rainbow 0 i) 
                 "_"
                 (substring rainbow i (string-length rainbow))))

(string-insert "rainbow" 4)
; yay!