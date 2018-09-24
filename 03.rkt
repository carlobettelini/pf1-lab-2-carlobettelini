;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |03|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Area of a pentagon
; Author: Carlo Bettelini, 24 Sep 2018

; Given a side length returns the area of the pentagon

; Constants
(define SIDE_LENGTH 2)
(define AREA_PENTAGON (* (/ 1 4) (expt SIDE_LENGTH 2) (sqrt (* 5 (+ 5 2(sqrt 5))))))

; Function
(define area-pentagon AREA_PENTAGON)

"The area of the pentagon is" area-pentagon