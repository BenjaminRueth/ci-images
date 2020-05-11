# This script installs PETSC to /opt/petsc
VERSION=3.6.0

PETSC_DIR=$(pwd)/petsc

mkdir -p /opt/petsc
mkdir -p petsc
wget -q -c http://ftp.mcs.anl.gov/pub/petsc/release-snapshots/petsc-lite-${VERSION}.tar.gz -O - | tar -xz -C petsc --strip=1
cd petsc
python ./configure --prefix=/opt/petsc
make all
make install
