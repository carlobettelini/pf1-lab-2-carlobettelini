;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |04|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Angle between hands of an analog clock
; Author: Carlo Bettelini, 24 Sep 2018

; Given a time returns the angle between the two hands of an analog clock

; Constants
(define HAND_HOUR 10.5)
(define HAND_MINUTE 37)
(define FULL_ANGLE 360)
(define FULL_HAND 60)

; Function
(define answer (/ (* FULL_ANGLE (- HAND_MINUTE HAND_HOUR)) FULL_HAND))

"The angle between the two hands of the clock is" answer