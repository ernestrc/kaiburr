export OPENSSL_LIB_DIR=`pwd`/../lib/openssl
export OPENSSL_INCLUDE_DIR=`pwd`/../lib/openssl/include

echo "OPENSSL_LIB_DIR=$OPENSSL_LIB_DIR"
echo "OPENSSL_INCLUDE_DIR=$OPENSSL_INCLUDE_DIR"

cargo build --target=arm-unknown-linux-gnueabihf --verbose
