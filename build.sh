#!/bin/bash

download_link=https://github.com/ArjunSahlot/corona_fall/archive/master.zip
temporary_dir=$(mktemp -d) \
&& curl -LO $download_link \
&& unzip -d $temporary_dir master.zip \
&& rm -rf master.zip \
&& mv $temporary_dir/corona_fall-master $1/corona_fall \
&& rm -rf $temporary_dir
echo -e "[0;32mSuccessfully downloaded to $1/corona_fall[0m"
