version=1.19.1
localdir=~/.local
mkdir -p $localdir
mkdir -p $localdir/bin
mkdir -p $localdir/lib
mkdir -p $localdir/share

tempdir=$(mktemp -d)

wget https://go.dev/dl/go$version.linux-amd64.tar.gz -P $tempdir
tar xzvf $tempdir/go$version.linux-amd64.tar.gz -C $tempdir
mv $tempdir/go $localdir/lib/go-$version # VERSION api bin misc pkg src test
ln -s $localdir/lib/go-$version/bin/go $localdir/bin/go
ln -s $localdir/lib/go-$version/bin/gofmt $localdir/bin/gofmt
