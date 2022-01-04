#!/bin/sh

# Convert DosBox configuration files to UTF-8 for use in GNU/Linux.

# Uses: coreutils, wget, sha256sum, unzip, iconv, sed.

set -e

_language=russian

_layout=ru

_codepage=cp1251

_zip=DOSBox-$_language-lang-074.zip

_config=dosbox-$_layout.conf

_langfile=$_language.txt

wget -nH -c 'http://www.dosbox.com/tools/'$_zip

sha256sum -c <<EOF

b239d0fc84d720205178cf8d84c159adca0f73cb2db07d515b3107c16ce3b331  $_zip

EOF

unzip -o $_zip dosbox.conf $_langfile

iconv -f $_codepage -t utf8 dosbox.conf | sed -E -e 's/^(language=).*/\1'$_langfile'/;s/^(keyboardlayout=).*/\1'$_layout'/' > $_config

rm dosbox.conf

echo "Saved: $_config"

tmp=$(mktemp)

head -n 251 $_langfile | iconv -f $_codepage -t utf8 > $tmp

tail -n +252 $_langfile >> $tmp

mv $tmp $_langfile

echo "Saved: $_langfile"

echo 'Done.'