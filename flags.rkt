;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname flags) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Use this file to draw flags
; Author: Carlo Bettelini, 24 Sep 2018

; Write in the interactive window the name of the following flags in order to draw them:
; italy
; russia
; mauritius
; benin
; laos
; somalia
; norway
; greece
; maldives
; tunisia
; qatar
; cuba
; seychelles

(require 2htdp/image)


; Constants
(define HEIGHT-OF-WINDOW 200)
(define WIDTH-OF-WINDOW 300)


; Function for somalia
(define somalia
  (overlay
   (star 50 "solid" "white")
   (rectangle WIDTH-OF-WINDOW HEIGHT-OF-WINDOW "solid" "DeepSkyBlue")
   )
  )


; Function for italy
(define italy
  (beside
   (rectangle (/ WIDTH-OF-WINDOW 3) HEIGHT-OF-WINDOW "solid" "ForestGreen")
   (rectangle (/ WIDTH-OF-WINDOW 3) HEIGHT-OF-WINDOW "solid" "white")
   (rectangle (/ WIDTH-OF-WINDOW 3) HEIGHT-OF-WINDOW "solid" "Crimson")
   )
  )


; Function for russia
(define russia
  (above
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 3) "solid" "white")
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 3) "solid" "Blue")
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 3) "solid" "red")
   )
  )


; Function for mauritius
(define mauritius
  (above
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 5) "solid" "Orange Red")
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 5) "solid" "blue")
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 5) "solid" "yellow")
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 5) "solid" "forestgreen")
   )
  )


; Function for benin
(define benin
  (beside
   (rectangle (/ WIDTH-OF-WINDOW 3) HEIGHT-OF-WINDOW "solid" "forestgreen")
   (above
    (rectangle (* (/ WIDTH-OF-WINDOW 3) 2) (/ HEIGHT-OF-WINDOW 2) "solid" "yellow")
    (rectangle (* (/ WIDTH-OF-WINDOW 3) 2) (/ HEIGHT-OF-WINDOW 2) "solid" "red")
    )
   )
  )


; Function for laos
(define laos
  (overlay
   (circle 40 "solid" "white")
   (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 2) "solid" "Medium Blue")
   (rectangle WIDTH-OF-WINDOW HEIGHT-OF-WINDOW "solid" "red")
   )
  )


; Constants for norway
(define BLUE_RECTANGLE_VERTICAL (rectangle 20 HEIGHT-OF-WINDOW "solid" "Medium Blue"))
(define BLUE_RECTANGLE_HORIZONTAL (rectangle WIDTH-OF-WINDOW 20 "solid" "Medium Blue"))
(define WHITE_RECTANGLE_VERTICAL (rectangle 40 HEIGHT-OF-WINDOW "solid" "white"))
(define WHITE_RECTANGLE_HORIZONTAL (rectangle WIDTH-OF-WINDOW 40 "solid" "white"))

; Function for norway
(define norway
  (overlay/xy
   BLUE_RECTANGLE_VERTICAL
   -80 0
   (overlay/xy
    BLUE_RECTANGLE_HORIZONTAL
    0 -90
    (overlay/xy
     WHITE_RECTANGLE_VERTICAL
     -70 0
     (overlay/xy
      WHITE_RECTANGLE_HORIZONTAL
      0 -80
      (rectangle WIDTH-OF-WINDOW HEIGHT-OF-WINDOW "solid" "crimson")
      )
     )
    )
   )
  )


; Constants for greece
(define BLUE_RECTANGLE_GREECE (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 9) "solid" "RoyalBlue"))
  (define WHITE_RECTANGLE_GREECE (rectangle WIDTH-OF-WINDOW (/ HEIGHT-OF-WINDOW 9) "solid" "white"))
  
; Function for greece
(define greece
  (overlay/xy
   (overlay
    (rectangle (/ HEIGHT-OF-WINDOW 9) (* (/ HEIGHT-OF-WINDOW 9) 5) "solid" "white")
    (rectangle (* (/ WIDTH-OF-WINDOW 5) 2) (/ HEIGHT-OF-WINDOW 9) "solid" "white")
    (rectangle (* (/ WIDTH-OF-WINDOW 5) 2) (* (/ HEIGHT-OF-WINDOW 9) 5) "solid" "RoyalBlue"))
   0 0
   (above
    BLUE_RECTANGLE_GREECE
    WHITE_RECTANGLE_GREECE
    BLUE_RECTANGLE_GREECE
    WHITE_RECTANGLE_GREECE
    BLUE_RECTANGLE_GREECE
    WHITE_RECTANGLE_GREECE
    BLUE_RECTANGLE_GREECE
    WHITE_RECTANGLE_GREECE
    BLUE_RECTANGLE_GREECE)
   )
  )


; Function for maldives
(define maldives
  (overlay
   (overlay/xy
    (overlay/xy
     (circle 40 "solid" "DarkGreen")
     -15 0
     (circle 40 "solid" "white"))
    -60 -20
    (scale 0.6 (rectangle WIDTH-OF-WINDOW HEIGHT-OF-WINDOW "solid" "DarkGreen")))
   (rectangle WIDTH-OF-WINDOW HEIGHT-OF-WINDOW "solid" "Crimson")
   )
  )


; Function for tunisia
(define tunisia
  (overlay
   (overlay/offset
    (overlay
     (rotate 10 (star 30 "solid" "Crimson"))
     (circle 34 "solid" "white"))
    -10 0
    (circle 40 "solid" "Crimson"))
   (circle 60 "solid" "white")
   (rectangle WIDTH-OF-WINDOW HEIGHT-OF-WINDOW "solid" "crimson")
   )
  )


; Constants for qatar
(define NARROW_WHITE_RECTANGLE
  (beside
   (rectangle (* (/ WIDTH-OF-WINDOW 3) 1) (/ HEIGHT-OF-WINDOW 9) "solid" "white")
   (rotate 270
           (isosceles-triangle (/ HEIGHT-OF-WINDOW 9) 60 "solid" "white")
           )
   )
  )

; Function for qatar
(define qatar
  (overlay/offset
   (above
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE
    NARROW_WHITE_RECTANGLE)
   140 0
   (rectangle (* (/ WIDTH-OF-WINDOW 3) 2) HEIGHT-OF-WINDOW "solid" "Firebrick")
   )
  )


; Constants for cuba
(define BLUE_RECTANGLE_CUBA (rectangle WIDTH-OF-WINDOW 40 "solid" "MediumBlue"))
(define WHITE_RECTANGLE_CUBA (rectangle WIDTH-OF-WINDOW 40 "solid" "white"))

; Function for cuba
(define cuba
  (overlay/offset
   (overlay/offset
    (star 40 "solid" "white")
    30 0
    (rotate 30 (triangle HEIGHT-OF-WINDOW "solid" "Crimson")))
   64 0
   (above
    BLUE_RECTANGLE_CUBA
    WHITE_RECTANGLE_CUBA
    BLUE_RECTANGLE_CUBA
    WHITE_RECTANGLE_CUBA
    BLUE_RECTANGLE_CUBA)
   )
  )


; Function for seychelles
(define seychelles
  (overlay
   (overlay/offset
    (overlay/offset
     (polygon (list (make-posn 0 0)
                    (make-posn (* (/ WIDTH-OF-WINDOW 3) 1) 0)
                    (make-posn 0 HEIGHT-OF-WINDOW)) "solid" "MediumBlue")
     48 0
     (polygon (list (make-posn (* (/ WIDTH-OF-WINDOW 3) 1) 0)
                    (make-posn (* (/ WIDTH-OF-WINDOW 3) 2) 0)
                    (make-posn 0 HEIGHT-OF-WINDOW)) "solid" "Yellow"))
    195 0
    (rectangle 20 20 "solid" "white"))                                           
   (overlay/offset
    (overlay/offset
     (polygon (list (make-posn WIDTH-OF-WINDOW (* (/ HEIGHT-OF-WINDOW 3) 2))
                    (make-posn WIDTH-OF-WINDOW HEIGHT-OF-WINDOW)
                    (make-posn 0 HEIGHT-OF-WINDOW)) "solid" "DarkGreen")
     0 -33
     (polygon (list (make-posn WIDTH-OF-WINDOW (* (/ HEIGHT-OF-WINDOW 3) 1))
                    (make-posn WIDTH-OF-WINDOW (* (/ HEIGHT-OF-WINDOW 3) 2))
                    (make-posn 0 HEIGHT-OF-WINDOW)) "solid" "white"))
    0 -126
    (rectangle 20 20 "solid" "yellow"))
   (rectangle WIDTH-OF-WINDOW HEIGHT-OF-WINDOW "solid" "Crimson")
   )
  )



                                          
  

            
                       

                     
   
          

  