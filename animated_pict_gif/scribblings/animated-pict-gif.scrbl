#lang rhombus/scribble/manual

@(import:
    rhombus meta_label: open
    rhombus/draw meta_label
    pict meta_label: open
    animated_pict_gif meta_label: open
    lib("mrlib/gif.rkt").#{write-animated-gif} meta_label
    lib("file/gif.rkt").#{gif-add-control} meta_label)
@(fun author(auth):
    para(~style: #'author, auth))
@(def rhombus_pict_scrbl:
    ModulePath'lib("rhombus/pict/scribblings/rhombus-pict.scrbl")')

@title{animated_pict_gif}

@author{Alex Knauth}

@docmodule(animated_pict_gif)

A Rhombus library wrapper around @racketmodname(mrlib/gif),
to write Rhombus @tech(~doc: rhombus_pict_scrbl){animated picts}
as animated GIF files.

@doc(
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
){
Writes the @rhombus(animated_pict) to @rhombus(filename) as
an animated GIF.
The @rhombus(delay_csec) argument is the amount of time in
1/100ths of a second to wait between frames.
If @rhombus(loop) is @rhombus(#true), then the GIF is marked
as a looping animation.

If @rhombus(last_frame_delay) is not @rhombus(#false),
a delay of @rhombus(last_frame_delay) in 1/100ths of a
second is added to the last frame.
This extra delay is useful when @rhombus(loop) is true.

The @rhombus(kind) argument determines whether it includes
color pixels and whether it includes an alpha channel to
record the opacity of each pixel.

For the meaning of the @rhombus(one_at_a_time) argument and
the @rhombus(disposal) argument,
see @rhombus(#{write-animated-gif}) from @racketmodname(mrlib/gif)
and @rhombus(#{gif-add-control}) from @racketmodname(file/gif).
}

@doc(
  fun animated_pict_frames(
    animated_pict :: Pict,
    delay_csec :: Int.in(0 ..= 4294967295),
  ) :: List.of(StaticPict)
){
Takes snapshots of the @rhombus(animated_pict) at intervals
of @rhombus(delay_csec) in 1/100ths of a second, using the
@rhombus(Pict.snapshot) method, collecting the results into
a @rhombus(List).
}

@doc(
  fun frames_write_animated_gif(
    picts :: List.of(StaticPict),
    delay_csec :: Int.in(0 ..= 4294967295),
    filename :: PathString,
    ~loop: loop :: Boolean = delay_csec && #true,
    ~one_at_a_time: one_at_a_time :: Boolean = #false,
    ~last_frame_delay: last_frame_delay :: maybe(Int.in(0 ..= 4294967295)) = #false,
    ~disposal: disposal :: Disposal = Disposal.any,
    ~kind: kind :: draw.Bitmap.Kind = draw.Bitmap.Kind.alpha,
  )
){
Writes the @rhombus(picts) to @rhombus(filename) as an animated GIF.
The @rhombus(delay_csec) argument is the amount of time in
1/100ths of a second to wait between frames.
If @rhombus(loop) is @rhombus(#true), then the GIF is marked
as a looping animation.

If @rhombus(last_frame_delay) is not @rhombus(#false),
a delay of @rhombus(last_frame_delay) in 1/100ths of a
second is added to the last frame.
This extra delay is useful when @rhombus(loop) is true.

The @rhombus(kind) argument determines whether it includes
color pixels and whether it includes an alpha channel to
record the opacity of each pixel.

For the meaning of the @rhombus(one_at_a_time) argument and
the @rhombus(disposal) argument,
see @rhombus(#{write-animated-gif}) from @racketmodname(mrlib/gif)
and @rhombus(#{gif-add-control}) from @racketmodname(file/gif).
}

@doc(
  enum Disposal
  | any
  | keep
  | #{restore-bg}
  | #{restore-prev}
){
Specifies the frame disposal method, which determines how
the previous frame is treated when writing a transparent
frame.
See @rhombus(#{gif-add-control}) from @racketmodname(file/gif)
for the meaning of the various disposal options.
}
