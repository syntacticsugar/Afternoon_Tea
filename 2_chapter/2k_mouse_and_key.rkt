;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 2k_mouse_and_key) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Of Mice and Characters: Before you design world programs that deal with key strokes 
; and mouse events, it is a good idea to practice with small, nearly trivial examples 
; to understand what the event handlers can and cannot compute. We start with a simple 
; problem concerning key strokes:

; Sample Problem: Design a program that keeps track of all key strokes. The program 
; should display the accumulated key strokes as a red text in the 11 point font.

