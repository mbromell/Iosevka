#!/usr/bin/env bash

npm run build -- ttf::Brosevka
npm run build -- woff2::Brosevka

parallel --progress fontforge -script font-patcher/font-patcher \
	--quiet --complete -out dist/Brosevka/NF ::: dist/Brosevka/TTF/*.ttf

./tools/make-release.sh
