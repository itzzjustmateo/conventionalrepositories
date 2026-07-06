all: compile-assets compile-site
all-dev: compile-assets-dev serve-site-dev

compile-site:
	echo "Generating static website"
	hugo
	echo "Website generated"

serve-site-dev:
	echo "Serving website"
	hugo serve --bind=0.0.0.0

compile-assets:
	echo "Compiling assets"
	cd themes/conventional-commits && bun install && bun run build
	echo "Assets compiled"

compile-assets-dev:
	echo "Compiling assets"
	cd themes/conventional-commits && bun install && bun run start &
	
