;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2k_mouse_and_key) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Of Mice and Characters: Before you design world programs that deal with key strokes 
; and mouse events, it is a good idea to practice with small, nearly trivial examples 
; to understand what the event handlers can and cannot compute. We start with a simple 
; problem concerning key strokes:

; Sample Problem: Design a program that keeps track of all key strokes. The program 
; should display the accumulated key strokes as a red text in the 11 point font.

; The problem looks easy and suggests a relative straightforward data definition for 
; representing the state of the world:
;       AllKeys is a String.
;       interp. the sequence of keys pressed since
;       big-bang created the canvas


; physical constants
(define WIDTH 100)
(define HEIGHT 50)

; graphical constant
(define MT (empty-scene WIDTH HEIGHT))

; From the data definition and the desire to deal with key events, we get a wish list
; with two functions:

; the function `remember` to manage key strokes:
;       AllKeys String -> AllKeys
;       add ke to ak, the state of the world
(define (remember1 ak ke) ak) 

; the function `show` to display the current state of the world:
;       AllKeys -> Image
;       render the string as a text and place it into MT
(define (show1 ak) MT)

; Here we spelled out a complete purpose, signature, and header for each function.
; Next we need to pick one of the two wishes and finish it. We choose remember 
; and move to example-tests:
;       AllKeys String -> AllKeys
;       add ke to ak, the state of the world
 
(check-expect (remember1 "hello" " ") "hello ")
(check-expect (remember1 "hello " "w") "hello w")
 
; One interpretation for the examples is that some user has entered the word "hello" 
; so far and next presses the space bar, which is represented as the string " ";
; furthermore, if the state of the world is ever "hello " and the user presses 
; the “w” key, the next state of the world should be "hello w". 
; Both example-tests say that the state of the world represents the key strokes 
; seen so far as a string, when read from left to right; the next key stroke is 
; added at the end. Thus, the examples suggest the obvious function definition:
;       AllKeys String -> AllKeys
;       add ke to ak, the state of the world
 
(check-expect (remember1 "hello" " ") "hello ")
(check-expect (remember1 "hello " "w") "hello w")
 
(define (remember ak ke)
  (string-append ak ke))

; Copy the code to DrRacket, click on RUN, and thus confirm that the example-tests work fine.
; The design of the remaining function, render, is equally straightforward, mostly 
; because the problem almost dictates the examples:
;      AllKeys -> Image
;      render the string as a text and place it into MT
 
(check-expect
 (show "hello") (place-image (text "hello" 11 "red") 10 20 MT))
(check-expect
 (show "mark") (place-image (text "mark" 11 "red") 10 20 MT))
 
(define (show ak)
  (place-image (text ak 11 "red") 10 20 MT))

; The key to the example is that by writing down expressions that construct the desired output,
; we can easily guess what the function should look like. Notice, though, the whimsically chosen
; positions of the text; nothing in the problem statement dictates this. We simply pick something
; and stick to it. If this were a for-money project, you would ask your customer of course if the
; program works as imagined before you move on to add other features.
; As we have said before, tests exist to reveal flaws; they can’t show that the program truly 
; works. For that, you must run the program and experiment, and eventually you must allow the 
; expected user to play with intermediate designs. So here is how you launch this interactive 
; program:
(big-bang "" (on-key remember) (to-draw show))

; This opens the world canvas, enabling you to press keys and see them reflected 