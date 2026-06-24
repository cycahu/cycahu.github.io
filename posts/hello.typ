#set par(justify: true)

#let en_font = "Palatino"
#let cn_font = "FZShuSong-Z01S"
#let cn_strong_font = "FZHei-B01S"
#let cn_italic_font = "FZKai-Z03S"
#let math_font = "TeX Gyre Pagella Math"
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#set text(lang: "zh", region: "cn", font: (
  (name: en_font, covers: "latin-in-cjk"),
  cn_font
))
#show emph: set text(font: (
  (name: en_font, covers: "latin-in-cjk"),
  cn_italic_font
))
#show strong: set text(font: (
  (name: en_font, covers: "latin-in-cjk"),
  cn_strong_font
))
#show text.where(weight: "bold"): set text(font: (
  (name: en_font, covers: "latin-in-cjk"),
  cn_strong_font
))
#show math.equation: set text(font: (
  math_font,
  cn_font,
))

#set page(numbering: "1")
#let qed = {
  h(1fr)
  box[□]
}
#let cdots = math.dots.h.c
#let cup = math.union
#let cap = math.inter
#let ol = math.overline

#align(center)[#title[]]
#v(1em)

= Hello Typst

这是我的第一篇 Typst 博客文章。

Newton-Leibniz Formula

$
  integral_a^b f'(x) = f(b) - f(a).
$

$
  f(x) = a x ^2 + b x + c.
$
#qed