;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |05|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; What pizza costs more?
; Author: Carlo Bettelini, 24 Sep 2018

; Given the size and the price of two pizzas returns what is the most convenient to buy

; Constants
(define SIZE_SMALL_PIZZA 33)
(define PRICE_SMALL_PIZZA 15)
(define SIZE_BIG_PIZZA 50)
(define PRICE_BIG_PIZZA 32)

(define AREA_SMALL_PIZZA (* (expt (/ SIZE_SMALL_PIZZA 2) 2) pi))
(define AREA_BIG_PIZZA (* (expt (/ SIZE_BIG_PIZZA 2) 2) pi))

(define COST_FOR_SQUARE_CM_BIG_PIZZA (/ PRICE_BIG_PIZZA AREA_BIG_PIZZA))
(define COST_FOR_SQUARE_CM_SMALL_PIZZA (/ PRICE_SMALL_PIZZA AREA_SMALL_PIZZA))

; Function
(define answer (< COST_FOR_SQUARE_CM_SMALL_PIZZA COST_FOR_SQUARE_CM_BIG_PIZZA))

"Two 33-cm pizzas cost less than one 50-cm pizza?" answer
