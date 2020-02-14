SIZES=( 256 48 24 16 )

CONVERT='/cygdrive/c/Program Files/ImageMagick-7.0.9-Q16/magick.exe'

for size in "${SIZES[@]}"; do
	if [ ! -f "png/$size.png" ]; then
		echo "$size.png not found (SIZES (${SIZES[@]}))"
		exit
	fi
done

for size in "${SIZES[@]}"; do
	"$CONVERT" png/$size.png ico/$size.ico
done

"$CONVERT" ico/*.ico output.ico

