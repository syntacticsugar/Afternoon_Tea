;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2d_222_composing_text) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "batch-io.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(write-file "turtle-geometry.dat" "Turtle Geometry presents an innovative program of mathematical discovery that demonstrates how the effective use of personal computers can profoundly change the nature of a student's contact with mathematics. ")
(read-file "turtle-geometry.dat")

(define (letter fst lst signature-name)
  (string-append
    (opening fst)
    "\n"
    (body fst lst)
    "\n"
    (closing signature-name)))
 
(define (opening fst)
  (string-append "Dear " fst ","))
 
(define (body fst lst)
  (string-append
   "we have discovered that all people with the last name "
   "\n"
   lst " have won our lottery. So, " fst ", "
   "\n"
   "hurry and pick up your prize."))
 
(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n"
   signature-name))

(write-file "Matthew-Krishnamurthi.txt"
            (letter "Matthew" "Krishnamurthi" "Felleisen"))

(read-file "Matthew-Krishnamurthi.txt")

(define (f2c f)
  (* 5/9 (- f 32)))

(define (convert in out)
  (write-file out
    (number->string
      (f2c
        (string->number (read-file in))))))
; i created a 'sample.dat' file 
(convert "sample.dat" "out.dat")
; & i got an 'out.dat' file :P :P

(big-bang 10
          (on-tick sub1)
          (to-draw render)
          (stop-when zero?))
(define (render t)
  (text (number->string t) 12 "cadetblue"))


