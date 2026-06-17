#lang rhombus/scribble/manual

@(import:
    rhombus meta_label: open
    animated_pict_gif meta_label: open)
@(def the_eval: make_rhombus_eval())
@examples(
  ~eval: the_eval,
  ~hidden:
    import: animated_pict_gif open
)

@title{animated_pict_gif}

@//author{Alex Knauth}

@docmodule(animated_pict_gif)

A Rhombus library wrapper around @racketmodname(mrlib/gif),
to write Rhombus @tech{animated picts} as animated GIF files.
