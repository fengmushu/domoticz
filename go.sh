cmake -DBUILD_SHARED_LIBS=yes \
	-DBoost_NO_BOOST_CMAKE=yes \
	-DCMAKE_BUILD_TYPE=Release \
	-DUSE_BUILTIN_MQTT=no \
	-DUSE_BUILTIN_SQLITE=no \
	-DUSE_STATIC_BOOST=no \
	-DUSE_STATIC_LIBSTDCXX=no \
	-DUSE_STATIC_OPENZWAVE=no \
	-DUSE_OPENSSL_STATIC=yes \
	-DUSE_PYTHON=no \
	-DUSE_FULL_HW=yes \
	-DUSE_TLS_SUPPORT=no \
	-DWITH_LIBUSB=no \
    -B build || {
        echo "Failed exec cmake"
        exit 0
    }


make -C build/ -j3
