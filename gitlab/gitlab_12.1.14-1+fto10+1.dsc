-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Format: 3.0 (quilt)
Source: gitlab
Binary: gitlab, gitlab-common
Architecture: all
Version: 12.1.14-1+fto10+1
Maintainer: Debian Ruby Extras Maintainers <pkg-ruby-extras-maintainers@lists.alioth.debian.org>
Uploaders: Cédric Boutillier <boutil@debian.org>, Pirate Praveen <praveen@debian.org>, Balasankar C <balasankarc@autistici.org>, Sruthi Chandran <srud@debian.org>, Utkarsh Gupta <guptautkarsh2102@gmail.com>
Homepage: https://about.gitlab.com/
Standards-Version: 4.4.1
Vcs-Browser: https://salsa.debian.org/ruby-team/gitlab
Vcs-Git: https://salsa.debian.org/ruby-team/gitlab.git
Testsuite: autopkgtest
Testsuite-Triggers: gcc, gem2deb-test-runner, golang-any, libc6-dev, phantomjs, ruby-dev, ruby-rspec, ruby-sqlite3, sudo
Build-Depends: debhelper (>= 10~), gem2deb, bc
Package-List:
 gitlab deb contrib/net optional arch=all
 gitlab-common deb net optional arch=all
Checksums-Sha1:
 cd41f38534da6cc59f7db050fe67307de9868b09 148161 gitlab_12.1.14.orig-core-js.tar.gz
 00e9f2642bfbfd072a850e5279e129064edffc09 107970 gitlab_12.1.14.orig-derailed-benchmarks.tar.gz
 61666b0211a0a4638e8763a2a3d352134784716b 11322 gitlab_12.1.14.orig-heapy.tar.gz
 da735a674ed503c04ae13bccbac5ff19c48e8fef 18782 gitlab_12.1.14.orig-ruby-statistics.tar.gz
 750b7a79b0e5d7f0c1d826f76de9db38f5d526a8 80942518 gitlab_12.1.14.orig.tar.gz
 d664fe01ddc8f461ab100a69e8dc53a7903499f1 72628 gitlab_12.1.14-1+fto10+1.debian.tar.xz
Checksums-Sha256:
 0e271c797d5cafaa1057824ed326b4a14b54e1b2277bc058b68da7ddc7de940c 148161 gitlab_12.1.14.orig-core-js.tar.gz
 3ab2db60e0fc660efe91de110473f47d046a4e2529584c98d84960db19baf742 107970 gitlab_12.1.14.orig-derailed-benchmarks.tar.gz
 2b2276ef16504445aa49c051d2168ad87666df3853937bd524407b257cf12ba5 11322 gitlab_12.1.14.orig-heapy.tar.gz
 91c1a7242aeb6e49c339fed8a455bb08286791450de39ef19b6cf8af8a24083e 18782 gitlab_12.1.14.orig-ruby-statistics.tar.gz
 7c762b364e5f4432a749f6b339e1b6afcfbe4bbb03c5175e2cb4238016643403 80942518 gitlab_12.1.14.orig.tar.gz
 776af45c61ea4852b26c957d08fdc515881adadd36070d6c21ce30b633dad4d4 72628 gitlab_12.1.14-1+fto10+1.debian.tar.xz
Files:
 b2921a841e66b08b79752993cff9ae22 148161 gitlab_12.1.14.orig-core-js.tar.gz
 0f6face4bb52f22371594fa178e8da01 107970 gitlab_12.1.14.orig-derailed-benchmarks.tar.gz
 b6be4c629df31e1d7b788c306e05af19 11322 gitlab_12.1.14.orig-heapy.tar.gz
 a99a862f84b5600fa4d9ab7ed10f2c8a 18782 gitlab_12.1.14.orig-ruby-statistics.tar.gz
 1650d8312c8e9924e7951c33e9c18907 80942518 gitlab_12.1.14.orig.tar.gz
 078a4a6d096af66c5ddbacd6660d0237 72628 gitlab_12.1.14-1+fto10+1.debian.tar.xz
Ruby-Versions: all

-----BEGIN PGP SIGNATURE-----

iQJPBAEBCAA5FiEEbJ0QSEqa5Mw4X3xxgj6WdgbDS5YFAl2cnvsbHGd1cHRhdXRr
YXJzaDIxMDJAZ21haWwuY29tAAoJEII+lnYGw0uWZCMQAI91DZ0awE3gO701Du3D
OPiTGcpyoHuJSYNUOS2c2h+I8QYRbuk/S8e6xg/Y1mIkSSo2pEcKpzXhczsiLOH3
rSScG4DDYrxCjOmSXtPevyXQe6UjOoeqR85JHQw5egiW8gcFQYaNoYT5HbouXShq
6zkzKug5xiOtZzj2qz18yI0GItvIMvqCGP0Zp+/fzTv9fxF01w2lrUzoR4QFQMFH
JNzkWweQcn2QlJzBeAcgb7+55YbQsbgSuFmF/A4WRadowFZ7zH7B2HmBL4KY3FMq
RljDiFH9GVjczs3AgD7Z0g80SB07lW2Q+abu/S+yAP+uKWxCUdINDcxySXGlePPZ
UZaxwcq1dkCu2sWar9T0LwnoJV15TTGPD9n+InK4U/3wRv96CF/WiBJN8GpnhRYV
cRUwgFPtVjCIeyhJfNOOGyx0fAiAFL4w67wPrwnLDGtpRQg7uDJdb2ndObJSHgxu
jvKLa5W02g0RxBeUDVRJE/aoE079uSjpClDZo/tR9u3IC217F9NvgxPf50UrXQJG
vL1/POWfnvVmSLXCasxzMgK+miGNHKsCU0oGDfx32hXKvTgFZYx02veFWg9Yi66N
hnFFh9DtbusbhJMsDNHvwy1TijK+VyqpLsYzajiLiNF1wP97OW0rUGAZW9ZpuQb6
Uxjkr7o5+o+jQHbOP4qdN63M
=JxQk
-----END PGP SIGNATURE-----
