animated-pict-gif
=================

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
