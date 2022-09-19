version=3.10.7
localdir=~/.local
mkdir -p $localdir
mkdir -p $localdir/bin
mkdir -p $localdir/lib
mkdir -p $localdir/include
mkdir -p $localdir/share

tempdir=$(mktemp -d)

# wget https://go.dev/dl/go$version.linux-amd64.tar.gz -P $tempdir
wget https://www.python.org/ftp/python/$version/Python-$version.tar.xz -P $tempdir
tar xvf $tempdir/Python-$version.tar.xz -C $tempdir
cd $tempdir/Python-$version
./configure --prefix=$HOME/Python-$version
make install
ln -s $HOME/Python-$version/bin/2to3-3.10              $localdir/bin/2to3-3.10 
ln -s $HOME/Python-$version/bin/idle3.10               $localdir/bin/idle3.10 
ln -s $HOME/Python-$version/bin/pip3.10                $localdir/bin/pip3.10 
ln -s $HOME/Python-$version/bin/pydoc3.10              $localdir/bin/pydoc3.10 
ln -s $HOME/Python-$version/bin/python3.10             $localdir/bin/python3.10 
ln -s $HOME/Python-$version/bin/python3.10-config      $localdir/bin/python3.10-config

