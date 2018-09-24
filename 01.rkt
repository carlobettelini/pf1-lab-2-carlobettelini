;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; How far did the train travel
; Author: Carlo Bettelini, 24 Sep 2018

; Given speed and time returns how much the train has travelled

; Time constants
(define TIME_1_HOURS 0)
(define TIME_1_MINUTES 20)

(define TIME_2_HOURS 1)
(define TIME_2_MINUTES 20)

(define TIME_3_HOURS 0)
(define TIME_3_MINUTES 35)

; Conversion factors
(define TIME_1 (+ TIME_1_HOURS (/ TIME_1_MINUTES 60)))
(define TIME_2 (+ TIME_2_HOURS (/ TIME_2_MINUTES 60)))
(define TIME_3 (+ TIME_3_HOURS (/ TIME_3_MINUTES 60)))

; Speed constants
(define SPEED_1 80)
(define SPEED_2 200)
(define SPEED_3 300)
  
; Function
(define length-of-travel 
         (+ (* SPEED_1 TIME_1) (* SPEED_2 TIME_2) (* SPEED_3 TIME_3)))

"The train travelled" length-of-travel "km"
