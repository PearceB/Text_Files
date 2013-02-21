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

; LLS -> LLS
; Consume a LLS and return a LLS without any articles

(define (delete-articles LLS)
  (cond
    [(empty? LLS) empty]
    [else 0]))

; String -> LLS
; Consume a file and make a new file that is like the old one
; except all the articles are gone

(define (remove-articles fn)
  (cond
    [(empty? fn) empty]
    [else 0]))