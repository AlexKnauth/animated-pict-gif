animated-pict-gif
=================

documentation: https://docs.racket-lang.org/animated-pict-gif/index.html

```
import: animated_pict_gif
```

A Rhombus library wrapper around [`mrlib/gif`](https://docs.racket-lang.org/mrlib/GIF_and_Animated_GIF_Writing.html), to write [Rhombus Animated Picts](https://docs.racket-lang.org/rhombus-pict/animated-pict.html) as animated GIF files.

```
fun animated_pict_write_animated_gif(
  animated_pict :: Pict,
  delay_csec :: Int.in(0 ..= 4294967295),
  filename :: PathString,
  ~loop: loop :: Boolean = delay_csec && #true,
  ~one_at_a_time: one_at_a_time :: Boolean = #false,
  ~last_frame_delay: last_frame_delay :: maybe(Int.in(0 ..= 4294967295)) = #false,
  ~disposal: disposal :: Disposal = Disposal.any,
  ~kind: kind :: draw.Bitmap.Kind = draw.Bitmap.Kind.alpha,
)
```

Writes the `animated_pict` to `filename` as an animated GIF.
The `delay_csec` argument is the amount of time in 1/100ths
of a second to wait between frames.
If `loop` is `#true`, then the GIF is marked as a looping
animation.

```
def sq: square(~size: 18, ~fill: "lightblue")
def cr: circle(~size: 12, ~fill: "pink")
def tri: triangle(~width: 16, ~fill: "black")
def pre: beside(sq, cr).scale(1.5)
def post: beside(~sep: 5, cr, tri, sq)
def bg: rectangle(~width: 60, ~height: 30, ~fill: "white")
animated_pict_write_animated_gif(
  overlay(bg, magic_move(pre, post, ~other: #'fade)),
  8,
  "magic_move_fade.gif")
```

![magic_move_fade.gif](https://github.com/AlexKnauth/animated-pict-gif/blob/main/animated_pict_gif/scribblings/magic_move_fade.gif?raw=true)
