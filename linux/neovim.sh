localdir=~/.local
mkdir -p $localdir

tempdir=$(mktemp -d)

wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz -P $tempdir
tar xzvf $tempdir/nvim-linux64.tar.gz -C $tempdir
# echo $tempdir
# mkdir -p $localdir/bin
# mkdir -p $localdir/lib
# mkdir -p $localdir/share
OLDPWD=$(pwd)
cd $tempdir/nvim-linux64
cp -Rpv . $localdir

# cp -r $tempdir/nvim-linux64/bin/*   $localdir/bin
# cp -r $tempdir/nvim-linux64/lib/*   $localdir/lib
# cp -r $tempdir/nvim-linux64/share/* $localdir/share
