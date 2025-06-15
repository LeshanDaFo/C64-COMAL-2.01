VICE="/Applications/vice-arm64-gtk3-3.9"
COMAL="/Volumes/Common/GitHub/C64-COMAL-2.01"
BUILD="/Volumes/Common/GitHub/C64-COMAL-2.01/build"

./bin/mac/acme -f plain  -o build/comal80_Com.bin code/comal_main_Com.asm
./bin/mac/acme -f plain  -o build/comal80_ApS.bin code/comal_main_ApS.asm

$VICE/bin/cartconv -i $BUILD/comal80_Com.bin -t comal -n "COMAL-80" -o $COMAL/Comal80_Com.crt
$VICE/bin/cartconv -i $BUILD/comal80_ApS.bin -t comal -n "Comal 80" -o $COMAL/Comal80_ApS.crt
printf '\x01' | dd of=$COMAL/Comal80_ApS.crt bs=1 seek=26 count=1 conv=notrunc
