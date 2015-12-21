# Dev setup
1- Download `multirust` if you don't have it yet [https://github.com/brson/multirust](https://github.com/brson/multirust) and update nightly toolchain:
```
multirust update nightly
```
2- Switch to nightly:
```
multirust override nightly
```
3- Run `cargo build`


# Compile for ARM
1- Download `multirust` if you don't have it yet [https://github.com/brson/multirust](https://github.com/brson/multirust) and make sure that the version being used for this project is stable:
```
multirust override stable
```
2- Install the GNU Compiler Collection for ARM (arm-linux-gnueabihf).

3- Point Cargo to your version of the compiler in your global cargo config (usually ~/.cargo/config):
```
[target.arm-unknown-linux-gnueabihf]
linker = "arm-linux-gnueabihf-gcc-$VERSION"
```
4- Download openssl sources then build for ARM:
```
cd openssl
git checkout OpenSSL_1_0_2-stable
./Configure dist --prefix=$KAIBURR_SRC/lib/openssl
make CC=arm-unknown-linux-gnueabihf-$VERSION
make install
```
5- Download rustlib for ARM [https://github.com/warricksothr/RustBuild](https://github.com/warricksothr/RustBuild) and install in the toolchain's lib. If you `tree $HOME/.multirust/toolchains/stable/lib` you should see something like this:
```
└── rustlib
    ├── arm-unknown-linux-gnueabihf
    │   └── lib

	...

    └── x86_64-unknown-linux-gnu
        └── lib

```
6- Run `./scripts/build-target-arm`
