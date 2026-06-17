#lang info

;; Package Info

(define collection 'multi)

(define deps
  '("base"
    "rhombus-lib"))

(define build-deps
  '("racket-doc"
    "rhombus"
    "rhombus-scribble-lib"
    "scribble-lib"))

(define pkg-desc
  "Write Rhombus Animated Picts as animated GIF files")

(define version "0.0")

(define pkg-authors '(AlexKnauth))

(define license 'MIT)
