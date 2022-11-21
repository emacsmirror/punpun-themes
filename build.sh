#!/bin/bash

pkgname=punpun-themes
version=$(cut -d\" -f4 $pkgname-pkg.el)
release=$pkgname-$version

rm -rf $release
mkdir $release
cp punpun-themes.el punpun-themes-pkg.el punpun-dark-theme.el punpun-light-theme.el LICENSE README.md $release
tar -cf $release.tar $release/
rm -rf $release
