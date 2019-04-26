REVEAL_DIR="reveal.js"

hash pandoc 2>/dev/null || { echo >&2 "pandoc is not installed. Please execute install.sh. Aborting."; exit 1; }

if [[ ! -d $REVEAL_DIR  ]]; then
    echo "Please install reveal.js"
fi

mkdir -p build
rm -rf build/*
cp -r assets build/assets
pandoc -s --webtex -i -t slidy TDD-PRESENTATION.md -o build/TDD-WEBTEX.html
pandoc -s -V theme=serif --css assets/css/hdi.css -i -t revealjs TDD-PRESENTATION.md -o build/TDD-REVEAL.html

