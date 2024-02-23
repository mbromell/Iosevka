#!/usr/bin/env bash

npm run build -- ttf::Brosevka
npm run build -- woff2::Brosevka

pushd font-patcher/
for font in ../dist/Brosevka/TTF/*.ttf; do
	echo "font: $font"
    fontforge -script font-patcher --complete $font -out ../dist/Brosevka/NF
done
popd

mkdir -p releases/
pushd releases/
zip --junk-paths -r TTF-Brosevka.zip ../dist/Brosevka/TTF/
zip --junk-paths -r WOFF2-Brosevka.zip ../dist/Brosevka/WOFF2/
zip --junk-paths -r NerdFont-Brosevka.zip ../dist/Brosevka/NF/
popd
