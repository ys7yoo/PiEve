#! /bin/sh
#if test ! -f config.h; then \
#	  rm -f stamp-h1; \
#	  /Applications/Xcode.app/Contents/Developer/usr/bin/make  stamp-h1; \
#	else :; fi
#/Applications/Xcode.app/Contents/Developer/usr/bin/make  all-am

echo "  CC    " PiEve.o;
gcc -DHAVE_CONFIG_H -I.    -Wall -Wpointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -fno-strict-aliasing -Wbad-function-cast -Wformat=2 -Wold-style-definition -Wdeclaration-after-statement  -I/opt/local/include -g -O2 -MT PiEve.o -MD -MP -MF PiEve.Po -c -o PiEve.o PiEve.c
#gcc -DHAVE_CONFIG_H -I.    -Wall -Wpointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -fno-strict-aliasing -Wbad-function-cast -Wformat=2 -Wold-style-definition -Wdeclaration-after-statement  -I/opt/local/include -g -O2 -MT PiEve.o -MD -MP -MF .deps/PiEve.Tpo -c -o PiEve.o PiEve.c
#mv -f .deps/PiEve.Tpo .deps/PiEve.Po
rm -f PiEve

echo "  CCLD  " PiEve;
gcc -Wall -Wpointer-arith -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wnested-externs -fno-strict-aliasing -Wbad-function-cast -Wformat=2 -Wold-style-definition -Wdeclaration-after-statement  -I/opt/local/include -g -O2   -o PiEve PiEve.o -L/opt/local/lib -lX11 

echo "  GEN   " PiEve.1;
/opt/local/bin/gsed -e 's|__vendorversion__|"PiEve 0.0.1" "X Version 11"|' 	-e 's|__xorgversion__|"PiEve 0.0.1" "X Version 11"|' 	-e 's|__xservername__|Xorg|g' 	-e 's|__xconfigfile__|xorg.conf|g' 	-e 's|__projectroot__|/usr/local|g' 	-e 's|__apploaddir__||g' 	-e 's|__appmansuffix__|1|g' 	-e 's|__drivermansuffix__|4|g' 	-e 's|__adminmansuffix__|8|g' 	-e 's|__libmansuffix__|3|g' 	-e 's|__miscmansuffix__|7|g' 	-e 's|__filemansuffix__|5|g' < PiEve.man > PiEve.1

#if test ! -f config.h; then \
#	  rm -f stamp-h1; \
#	  /Applications/Xcode.app/Contents/Developer/usr/bin/make  stamp-h1; \
#	else :; fi
