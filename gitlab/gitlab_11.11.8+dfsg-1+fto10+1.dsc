-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: gitlab
Binary: gitlab, gitlab-common
Architecture: all
Version: 11.11.8+dfsg-1+fto10+1
Maintainer: Debian Ruby Extras Maintainers <pkg-ruby-extras-maintainers@lists.alioth.debian.org>
Uploaders: Cédric Boutillier <boutil@debian.org>, Pirate Praveen <praveen@debian.org>, Balasankar C <balasankarc@autistici.org>, Sruthi Chandran <srud@debian.org>, Utkarsh Gupta <guptautkarsh2102@gmail.com>
Homepage: https://about.gitlab.com/
Standards-Version: 4.4.0
Vcs-Browser: https://salsa.debian.org/ruby-team/gitlab
Vcs-Git: https://salsa.debian.org/ruby-team/gitlab.git
Testsuite: autopkgtest
Testsuite-Triggers: gcc, gem2deb-test-runner, golang-any, libc6-dev, phantomjs, ruby-dev, ruby-rspec, ruby-sqlite3, sudo
Build-Depends: debhelper (>= 10~), gem2deb, bc
Package-List:
 gitlab deb contrib/net optional arch=all
 gitlab-common deb net optional arch=all
Checksums-Sha1:
 5398a8533b135c8c458bf053493051f07d01efd9 68196380 gitlab_11.11.8+dfsg.orig.tar.xz
 8ccb9f220a0b66dbeb2a67a72e19b1ec16c8c78d 1174812 gitlab_11.11.8+dfsg-1+fto10+1.debian.tar.xz
Checksums-Sha256:
 6849f6906f76e13b1c93f105e87601b4e5d9d6e5a1d4b08e7f7126ea47f934eb 68196380 gitlab_11.11.8+dfsg.orig.tar.xz
 52b7061eb3babde3e4754f053d77286bae35a2143871b149ea17d351bcae6a29 1174812 gitlab_11.11.8+dfsg-1+fto10+1.debian.tar.xz
Files:
 8dae1c64b68b4c2740a8235b7b3dc6ea 68196380 gitlab_11.11.8+dfsg.orig.tar.xz
 500dd81d72f9ceba28f649a556cfb85c 1174812 gitlab_11.11.8+dfsg-1+fto10+1.debian.tar.xz
Ruby-Versions: all

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEbJ0QSEqa5Mw4X3xxgj6WdgbDS5YFAl1ZA3AACgkQgj6WdgbD
S5ZjXxAAiTe+1ncuRh/HmDgyJi71dN1a3IiB+cotlI2plQC+Tws4+LyoJWZCssN5
udPyrS3+BeViThpJedzJRlhXGnL+cVRG6hHAYohIxqo7fjjMC1TtTTPvSxxMdDb4
509ZbtJJagj6m22mL2OXHMEEFlyTyQkb7cijZkT39XkPop/HQSgKaxzwBCo7sqFo
pRgmlZXImaTXz3fvGBWVQA9OtzSkn5IujCTzy2zyQd+tS1HYCdxZm/o9dU4Gb/aP
fB3+Gr+Rs4bPNYCFUyvyFV1pi/Klj9s7RsraJA1Zs/een7Uq2c+jYuVizkdW+vHk
eNrLhHNkVjlaEwISW4k0vECeOULNkQTgvv1AqNgHhyv9OYIU3MLYxo7m8UPjyQjP
SfGX4RdzRXWCIREzmg9s2uhcSBn14jiOLFvEarDl5Myfz2iPBNpmTksS7YQZt6R8
s6fx4j+SdYSPUA1SniwgdyukOHuhnNKJkVUHGb+Uve42A58LZ6BanQkzkm2erSth
aWnIlODMaGWyq70nhkeFubm4SBb7ZxxveFQo+LjJxp7f7MuT5mEd8+JR8QefZUom
guPMtzdGf9+wUH6W7SjAjcWFKrlfnvbCYeYcI3LKOnJ/kBKJbMyo+10WtxDM9xAY
0Zzv+cocTj9BtNWDzhv+phzvcug3GPsUjSiDli8vLAga7xwX5AE=
=FueC
-----END PGP SIGNATURE-----
