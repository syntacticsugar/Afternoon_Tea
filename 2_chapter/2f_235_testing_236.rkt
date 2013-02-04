;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2f_235_testing_236) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Number -> Number
; convert Fahrenheit temperatures to Celsius temperatures
; given 32, expected 0
; given 212, expected 100
; given -40, expected -40
(define (f2c f)
  (* 5/9 (- f 32)))

(check-expect (f2c -40) -40)
(check-expect (f2c 32) 0)
(check-expect (f2c 212) 100)
(check-expect (f2c -40) 40) ;fails
