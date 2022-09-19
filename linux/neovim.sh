localdir=~/.local
mkdir -p $localdir

tempdir=$(mktemp -d)

wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz -P $tempdir
tar xzvf $tempdir/nvim-linux64.tar.gz -C $tempdir
cd $tempdir/nvim-linux64
cp -Rpv . $localdir
