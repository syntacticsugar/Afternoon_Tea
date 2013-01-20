;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2e_design) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Exercise 27: Design the function string-first, 
; which extracts the first character from a non-empty string.
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; String -> String
; extract the first character of a string
; given: "mushrooms", expect: "m"
(define (string-first rainbow)
  (string-ith rainbow 0))

; Exercise 28: Design the function string-last, 
; which extracts the last character from a non-empty string.
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; String -> String
; extract the last char from a string
; given: "rainbow", expect: "w"
(define string-last
  (lambda (rainbow)
    (string-ith rainbow (- (string-length rainbow) 1))))

; Exercise 29: Design the function image-area, 
; which computes the area of a given image. 
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; String -> String

; Exercise 30: Design the function string-rest, 
; which produces a string like the given one
; with the first character removed.
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; String -> String