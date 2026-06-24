#!/bin/bash
set -e

rm -rf public
mkdir -p public/posts

for f in posts/*.typ; do
  name=$(basename "$f" .typ)
  typst compile "$f" "public/posts/$name.pdf"
done

cat > public/index.html <<'HTML'
<!doctype html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <title>cycahu 的博客</title>
</head>
<body>
  <h1>cycahu 的博客</h1>
  <ul>
HTML

for pdf in public/posts/*.pdf; do
  name=$(basename "$pdf" .pdf)
  echo "    <li><a href=\"posts/$name.pdf\">$name</a></li>" >> public/index.html
done

cat >> public/index.html <<'HTML'
  </ul>
</body>
</html>
HTML
