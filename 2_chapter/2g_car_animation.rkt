;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2g_car_animation) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; The initial state is the value of w0, 
; because our big-bang expression says so.
; "says so" means "don't ask why"   
; hm, now i understand how big-bang works.

; All of this is to make an ugly blocky car. Eugh.
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))
(define BODY-LENGTH (+ WHEEL-DISTANCE (* 6 WHEEL-RADIUS)))
(define BODY-HEIGHT (* WHEEL-RADIUS 2))
(define WHL (circle WHEEL-RADIUS "solid" "black"))
(define BDY
  (above
    (rectangle (/ BODY-LENGTH 2) (/ BODY-HEIGHT 2)
               "solid" "navy")
    (rectangle BODY-LENGTH BODY-HEIGHT "solid" "cadetblue")))
(define SPC (rectangle WHEEL-DISTANCE 1 "solid" "white"))
(define WH* (beside WHL SPC WHL))
(define CAR (underlay/xy BDY WHEEL-RADIUS BODY-HEIGHT WH*))
CAR
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
(define (render ws) (empty-scene 300 70))
; CarState -> Image
; place the car into a scene, according to the given world state 'ws'
(define Y-CAR 220)

(define BG .)
(define (render1 x-position)
  (place-image CAR x-position (+ Y-CAR (* .45 (sin x-position))) BG))
; JIGGLY-PUFF!  (place-image CAR x-position (+ Y-CAR (remainder x-position 10)) BG))
(define (end? x-position)
  (>= x-position BYE))
;(image-width BG)
;(define (BYE CAR BG) (+ (image-width BG) (/ (image-width CAR) 2)) 220 BG)
(define BYE (+ (image-width BG) (/ (image-width CAR) 2)))
; CarState -> CarState
; the clock ticked; move the car by three pixels
(define (tock x-position) (+ x-position 1))
(define (main x-position)
   (big-bang x-position 
             (on-tick tock) 
             (to-draw render1)
             (stop-when end?)
            ))
; reminder to self. 
(main -50)