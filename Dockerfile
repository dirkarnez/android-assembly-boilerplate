FROM dockcross/android-arm64

COPY . /android-assembly-boilerplate

VOLUME [ "/android-assembly-boilerplate" ]

WORKDIR /android-assembly-boilerplate

CMD mkdir -p build && \
    cd src && \
    /usr/aarch64-linux-android/bin/aarch64-linux-android-as -o ../build/hello.o hello.s && \
    cd ../build && \
    /usr/aarch64-linux-android/bin/ld -s -o hello hello.o
