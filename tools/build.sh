#!/usr/bin/env bash

npm run build -- ttf::Brosevka
npm run build -- woff2::Brosevka

pushd font-patcher/
for font in ../dist/Brosevka/TTF/*.ttf; do
	echo "font: $font"
	if [ -z "$PS1" ]; then
		fontforge -script font-patcher --no-progressbars --complete \
			$font -out ../dist/Brosevka/NF
	else
		fontforge -script font-patcher --complete \
			$font -out ../dist/Brosevka/NF
	fi
done
popd

./tools/make-release.sh
