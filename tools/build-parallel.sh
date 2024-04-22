#!/usr/bin/env bash

npm run build -- ttf::Brosevka
npm run build -- woff2::Brosevka

docker run --rm \
	-v $(pwd)/dist/Brosevka/TTF:/in:Z \
	-v $(pwd)/dist/Brosevka/NF:/out:Z \
	nerdfonts/patcher:latest \
	--no-progressbars --complete

mkdir -p releases/
pushd releases/
zip --junk-paths -r TTF-Brosevka.zip ../dist/Brosevka/TTF/
zip --junk-paths -r WOFF2-Brosevka.zip ../dist/Brosevka/WOFF2/
zip --junk-paths -r NerdFont-Brosevka.zip ../dist/Brosevka/NF/
popd
