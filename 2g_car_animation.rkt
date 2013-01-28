;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2g_car_animation) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))
(define BODY-LENGTH (+ WHEEL-DISTANCE (* 6 WHEEL-RADIUS)))
(define BODY-HEIGHT (* WHEEL-RADIUS 2))
(define WHL (circle WHEEL-RADIUS "solid" "black"))
(define BDY
  (above
    (rectangle (/ BODY-LENGTH 2) (/ BODY-HEIGHT 2)
               "solid" "red")
    (rectangle BODY-LENGTH BODY-HEIGHT "solid" "cadetblue")))
(define SPC (rectangle WHEEL-DISTANCE 1 "solid" "white"))
(define WH* (beside WHL SPC WHL))
(define CAR (underlay/xy BDY WHEEL-RADIUS BODY-HEIGHT WH*))
; CarState is a Number
; the number of pixels between the left border and the car

; main : CarState -> CarState
; launch the program from some initial state

; Last but not least, you need to define a main function 
; that puts it all together. Unlike all other functions, 
; a main function for world programs doesn’t demand design. 
; As a matter of fact, it doesn’t require testing. 
; Its sole reason for existing is that you can run your
; world program conveniently once all tests for the event 
; handling functions are completed.

; CarState -> Image
; place the car into a scene, according to the given world state
(define (render ws) (empty-scene 300 50))
; CarState -> Image
; place the car into a scene, according to the given world state
(define Y-CAR
(define (render ws)
  (place-image CAR ws Y-CAR BACKGROUND))

; CarState -> CarState
; the clock ticked; move the car by three pixels
(define (tock ws) (+ ws 3))
(define (main ws)
   (big-bang ws (on-tick tock) (to-draw render)))
