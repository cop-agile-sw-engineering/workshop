mkdir -p build
rm -rf build/*
cp -r assets build/assets
pandoc -s --webtex -i -t slidy TDD-PRESENTATION.md -o build/TDD-WEBTEX.html
pandoc -s -V theme=solarized -i -t revealjs TDD-PRESENTATION.md -o build/TDD-REVEAL.html -V revealjs-url=https://revealjs.com
