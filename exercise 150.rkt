;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname |exercise 150|) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
; Exercise 150

(require 2htdp/batch-io)
; LOS (List-of-string)s is one of:
; - empty
; - (cons String LOS)
; interp. : a List-of-strings is a list of strings

; LLS (List-of-list-of-strings) is one of:
; - empty
; - (cons List-of-strings LLS)
; interp. : a list-of-list-of-strings is a list of lists of strings

; LLS -> String
; Make a list of lists into a string

(define (delete-articles3 LLS)
  (cond
    [(empty? LLS) empty]
    [(cons? LLS) true]))

; LLS -> LLS
; Apply the function delete-articles to every list in a list of lists

(define (delete-articles2 LLS)
  (cond
    [(empty? (first LLS)) empty]
    [(cons? (first LLS))
     (list (delete-articles (first LLS))
           (delete-articles2 (rest LLS)))]))

; LOS -> LOS
; Consume a LOS and return a LOS without any articles

(define (delete-articles LOS)
   (cond
     [(empty? LOS) empty]
     [(cons? LOS)
      (cond
        [(string=? "a" (first LOS)) (list (delete-articles (rest LOS)))]
        [(string=? "an" (first LOS)) (list (delete-articles (rest LOS)))]
        [(string=? "the" (first LOS)) (list (delete-articles (rest LOS)))]
        [else (list (delete-articles (rest LOS)))])]))

; String -> LLS
; Consume a file and make a new file that is like the old one
; except all the articles are gone

(define (remove-articles fn)
  (cond
    [(empty? fn) empty]
    [else
     (write-file "ttt2.txt" (delete-articles2 (read-words/line "ttt.txt")))]))