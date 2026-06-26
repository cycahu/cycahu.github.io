---
layout: default
title: Hello, World!
date: 2026-06-25
---

# Hello, World!

使用 Jekyll, 在和 ChatGPT-5.5 Plus 大战了一个晚上后成功搭建了本博客, 初始 prompt 为

> mac, 用 jekyll 和仓库 cycahu.github.io 搭建一个支持 markdown 和数学公式的个人博客 给出最简单直接的步骤.

随后又要求 ChatGPT-5.5 Plus 加入了行内公式, 翻页, 并用 giscus 实现了评论功能.

安装了一些我也不太懂具体是干啥的东西, `bundle exec jekyll serve --livereload` 可以在本地预览.

测试一下数学公式: 若 $f$ 可导, 且 $f'$ 在 $[a,b]$ 上 Riemann 可积, 则有 Newton-Leibniz 定理

$$
  \int_a^b f'(x)dx = f(b) - f(a).
$$
