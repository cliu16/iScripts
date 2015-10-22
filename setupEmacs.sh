#/bin/bash
#Install emacs on centos
mkdir emacs
cd emacs

wget http://gnu.mirror.iweb.com/emacs/emacs-24.5.tar.gz

tar -xvf emacs-24.5.tar.gz
rm emacs-24.5.tar.gz
cd emacs-24.5

sudo yum install gcc make ncurses-devel
sudo yum install giflib-devel libjpeg-devel libtiff-devel
./configure --without-x --without-selinux
make -j8
sudo make install
which emacs

# TODO Copy emacs.d

