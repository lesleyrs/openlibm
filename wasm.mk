all:
	make ARCH=wasm32 CFLAGS="-Oz -ffast-math -flto" -B -j8
	cp libopenlibm.a ../../wasmlite/libc/lib/libm.a
	cp include/openlibm_math.h ../../wasmlite/libc/include/math.h
	cp include/openlibm_complex.h ../../wasmlite/libc/include/complex.h
