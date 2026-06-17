#lang info

;; Package Info

(define collection 'multi)

(define deps
  '("base"
    "gui-lib"
    "rhombus-lib"))

(define build-deps
  '("draw-lib"
    "gui-doc"
    "racket-doc"
    "rhombus"
    "rhombus-draw"
    "rhombus-pict"
    "rhombus-scribble-lib"
    "scribble-lib"))

(define pkg-desc
  "Write Rhombus Animated Picts as animated GIF files")

(define version "0.0")

(define pkg-authors '(AlexKnauth))

(define license 'MIT)
