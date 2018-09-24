;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; How many km/h in a furlong per week
; Author: Carlo Bettelini, 24 Sep 2018

; Given space and time returns the speed in km/h

; Constant
(define FURLONGS 2500)

; Conversion factors
(define FURLONG_TO_CHAIN 10)
(define CHAIN_TO_FEET 66)
(define FEET_TO_INCHES 12)
(define INCHES_TO_CM 2.54)
(define CM_TO_KILOMETERS (/ 1 100000))
(define WEEK_TO_HOURS (* 7 24))

; Function
(define speed (/ (* FURLONGS
                    FURLONG_TO_CHAIN
                    CHAIN_TO_FEET
                    FEET_TO_INCHES
                    INCHES_TO_CM
                    CM_TO_KILOMETERS)
                 WEEK_TO_HOURS))

"2500 furlong in a week is" speed "km/h"


