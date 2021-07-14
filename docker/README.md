# Step 1 (Docker-ayes)

This is the docker file to create a litecoin:v0.18.1 image with some of the requested changes.

The script in the base folder (`build.sh`) do the process.

***Note:*** I set grype scan to halt only if critical issues are found because there are some high CVE in the starting image used.

# Results of build

```bash
$ ./build.sh                                                                                                                                                                              ‹ruby-2.7.4›
Cleaning up old images (if any)...
Pulling image...
0.18.1: Pulling from uphold/litecoin-core
696098ac4087: Already exists
09591c3cd678: Already exists
ca5e77abb4c5: Already exists
f645f7a7a4cc: Already exists
3e2217005027: Already exists
Digest: sha256:fb3148b0ca9fb3075ea7670c1690d4fa8bcf323d72a4c7192d8da235d95ee994
Status: Downloaded newer image for uphold/litecoin-core:0.18.1
docker.io/uphold/litecoin-core:0.18.1
Image sha256 => sha256:fb3148b0ca9fb3075ea7670c1690d4fa8bcf323d72a4c7192d8da235d95ee994
Target value => sha256:fb3148b0ca9fb3075ea7670c1690d4fa8bcf323d72a4c7192d8da235d95ee994
SHA256 match!
[+] Building 0.1s (7/7) FINISHED
 => [internal] load build definition from Dockerfile                                                                                                                                              0.0s
 => => transferring dockerfile: 37B                                                                                                                                                               0.0s
 => [internal] load .dockerignore                                                                                                                                                                 0.0s
 => => transferring context: 2B                                                                                                                                                                   0.0s
 => [internal] load metadata for docker.io/uphold/litecoin-core:0.18.1                                                                                                                            0.0s
 => [1/3] FROM docker.io/uphold/litecoin-core:0.18.1                                                                                                                                              0.0s
 => CACHED [2/3] RUN apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y                                                                                                       0.0s
 => CACHED [3/3] RUN mkdir -p /home/litecoin/.litecoin && chown litecoin:litecoin -R /home/litecoin/                                                                                              0.0s
 => exporting to image                                                                                                                                                                            0.0s
 => => exporting layers                                                                                                                                                                           0.0s
 => => writing image sha256:a90d8b8a5f9025f969298f87449c513b08a5a56d0c3a708a09f5f787c9eeeaec                                                                                                      0.0s
 => => naming to docker.io/library/litecoin                                                                                                                                                       0.0s
Security Scan...
NAME              INSTALLED              FIXED-IN     VULNERABILITY     SEVERITY
apt               1.8.2.3                             CVE-2011-3374     Negligible
bash              5.0-4                               CVE-2019-18276    Negligible
coreutils         8.30-3                 (won't fix)  CVE-2016-2781     Low
coreutils         8.30-3                              CVE-2017-18018    Negligible
curl              7.64.0-4+deb10u2       (won't fix)  CVE-2021-22898    Low
dirmngr           2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gcc-8-base        8.3.0-6                (won't fix)  CVE-2018-12886    Medium
gcc-8-base        8.3.0-6                (won't fix)  CVE-2019-15847    Medium
gnupg             2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gnupg-l10n        2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gnupg-utils       2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gpg               2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gpg-agent         2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gpg-wks-client    2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gpg-wks-server    2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gpgconf           2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gpgsm             2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
gpgv              2.2.12-1+deb10u1       (won't fix)  CVE-2019-14855    Low
krb5-locales      1.17-3+deb10u1                      CVE-2004-0971     Negligible
krb5-locales      1.17-3+deb10u1                      CVE-2018-5709     Negligible
libapt-pkg5.0     1.8.2.3                             CVE-2011-3374     Negligible
libc-bin          2.28-10                             CVE-2019-9192     Negligible
libc-bin          2.28-10                             CVE-2019-1010023  Negligible
libc-bin          2.28-10                             CVE-2019-1010024  Negligible
libc-bin          2.28-10                             CVE-2019-1010025  Negligible
libc-bin          2.28-10                             CVE-2018-20796    Negligible
libc-bin          2.28-10                             CVE-2010-4052     Negligible
libc-bin          2.28-10                             CVE-2010-4051     Negligible
libc-bin          2.28-10                (won't fix)  CVE-2020-10029    Low
libc-bin          2.28-10                (won't fix)  CVE-2019-19126    Low
libc-bin          2.28-10                             CVE-2010-4756     Negligible
libc-bin          2.28-10                             CVE-2019-1010022  Negligible
libc-bin          2.28-10                (won't fix)  CVE-2016-10228    Low
libc-bin          2.28-10                (won't fix)  CVE-2020-1752     Low
libc-bin          2.28-10                (won't fix)  CVE-2020-6096     Low
libc-bin          2.28-10                (won't fix)  CVE-2020-1751     Medium
libc-bin          2.28-10                (won't fix)  CVE-2019-25013    High
libc-bin          2.28-10                (won't fix)  CVE-2021-3326     Medium
libc-bin          2.28-10                (won't fix)  CVE-2021-27645    Low
libc-bin          2.28-10                (won't fix)  CVE-2020-27618    Low
libc-bin          2.28-10                (won't fix)  CVE-2021-33574    High
libc-bin          2.28-10                (won't fix)  CVE-2021-35942    Unknown
libc6             2.28-10                             CVE-2019-9192     Negligible
libc6             2.28-10                             CVE-2019-1010023  Negligible
libc6             2.28-10                             CVE-2019-1010024  Negligible
libc6             2.28-10                             CVE-2019-1010025  Negligible
libc6             2.28-10                             CVE-2018-20796    Negligible
libc6             2.28-10                             CVE-2010-4052     Negligible
libc6             2.28-10                             CVE-2010-4051     Negligible
libc6             2.28-10                (won't fix)  CVE-2020-10029    Low
libc6             2.28-10                (won't fix)  CVE-2019-19126    Low
libc6             2.28-10                             CVE-2010-4756     Negligible
libc6             2.28-10                             CVE-2019-1010022  Negligible
libc6             2.28-10                (won't fix)  CVE-2016-10228    Low
libc6             2.28-10                (won't fix)  CVE-2020-1752     Low
libc6             2.28-10                (won't fix)  CVE-2020-6096     Low
libc6             2.28-10                (won't fix)  CVE-2020-1751     Medium
libc6             2.28-10                (won't fix)  CVE-2019-25013    High
libc6             2.28-10                (won't fix)  CVE-2021-3326     Medium
libc6             2.28-10                (won't fix)  CVE-2021-27645    Low
libc6             2.28-10                (won't fix)  CVE-2020-27618    Low
libc6             2.28-10                (won't fix)  CVE-2021-33574    High
libc6             2.28-10                (won't fix)  CVE-2021-35942    Unknown
libcurl4          7.64.0-4+deb10u2       (won't fix)  CVE-2021-22898    Low
libgcc1           1:8.3.0-6              (won't fix)  CVE-2018-12886    Medium
libgcc1           1:8.3.0-6              (won't fix)  CVE-2019-15847    Medium
libgcrypt20       1.8.4-5+deb10u1                     CVE-2018-6829     Negligible
libgcrypt20       1.8.4-5+deb10u1        (won't fix)  CVE-2019-13627    Low
libgnutls30       3.6.7-4+deb10u7                     CVE-2011-3389     Medium
libgssapi-krb5-2  1.17-3+deb10u1                      CVE-2004-0971     Negligible
libgssapi-krb5-2  1.17-3+deb10u1                      CVE-2018-5709     Negligible
libidn2-0         2.0.5-1+deb10u1        (won't fix)  CVE-2019-12290    Medium
libk5crypto3      1.17-3+deb10u1                      CVE-2004-0971     Negligible
libk5crypto3      1.17-3+deb10u1                      CVE-2018-5709     Negligible
libkrb5-3         1.17-3+deb10u1                      CVE-2004-0971     Negligible
libkrb5-3         1.17-3+deb10u1                      CVE-2018-5709     Negligible
libkrb5support0   1.17-3+deb10u1                      CVE-2004-0971     Negligible
libkrb5support0   1.17-3+deb10u1                      CVE-2018-5709     Negligible
libldap-2.4-2     2.4.47+dfsg-3+deb10u6               CVE-2017-17740    Negligible
libldap-2.4-2     2.4.47+dfsg-3+deb10u6               CVE-2017-14159    Negligible
libldap-2.4-2     2.4.47+dfsg-3+deb10u6               CVE-2015-3276     Negligible
libldap-2.4-2     2.4.47+dfsg-3+deb10u6               CVE-2020-15719    Negligible
libldap-common    2.4.47+dfsg-3+deb10u6               CVE-2017-17740    Negligible
libldap-common    2.4.47+dfsg-3+deb10u6               CVE-2017-14159    Negligible
libldap-common    2.4.47+dfsg-3+deb10u6               CVE-2015-3276     Negligible
libldap-common    2.4.47+dfsg-3+deb10u6               CVE-2020-15719    Negligible
liblz4-1          1.8.3-1+deb10u1        (won't fix)  CVE-2019-17543    Low
libpcre3          2:8.39-12                           CVE-2017-7245     Negligible
libpcre3          2:8.39-12                           CVE-2017-11164    Negligible
libpcre3          2:8.39-12                           CVE-2017-7246     Negligible
libpcre3          2:8.39-12                           CVE-2017-16231    Negligible
libpcre3          2:8.39-12              (won't fix)  CVE-2020-14155    Medium
libpcre3          2:8.39-12                           CVE-2019-20838    Negligible
libseccomp2       2.3.3-4                             CVE-2019-9893     Negligible
libsepol1         2.8-1                  (won't fix)  CVE-2021-36084    Low
libsepol1         2.8-1                  (won't fix)  CVE-2021-36085    Low
libsepol1         2.8-1                  (won't fix)  CVE-2021-36086    Low
libsepol1         2.8-1                  (won't fix)  CVE-2021-36087    Low
libsqlite3-0      3.27.2-3+deb10u1       (won't fix)  CVE-2019-19924    Medium
libsqlite3-0      3.27.2-3+deb10u1       (won't fix)  CVE-2019-19603    Medium
libsqlite3-0      3.27.2-3+deb10u1       (won't fix)  CVE-2019-19645    Low
libsqlite3-0      3.27.2-3+deb10u1                    CVE-2020-11656    Negligible
libsqlite3-0      3.27.2-3+deb10u1       (won't fix)  CVE-2020-13631    Low
libsqlite3-0      3.27.2-3+deb10u1                    CVE-2019-19244    Negligible
libssh2-1         1.8.0-2.1              (won't fix)  CVE-2019-13115    Medium
libssh2-1         1.8.0-2.1              (won't fix)  CVE-2019-17498    Low
libssl1.1         1.1.1d-0+deb10u6                    CVE-2007-6755     Negligible
libssl1.1         1.1.1d-0+deb10u6                    CVE-2010-0928     Negligible
libstdc++6        8.3.0-6                (won't fix)  CVE-2018-12886    Medium
libstdc++6        8.3.0-6                (won't fix)  CVE-2019-15847    Medium
libsystemd0       241-7~deb10u7          (won't fix)  CVE-2019-3844     Medium
libsystemd0       241-7~deb10u7          (won't fix)  CVE-2019-3843     Medium
libsystemd0       241-7~deb10u7                       CVE-2013-4392     Negligible
libsystemd0       241-7~deb10u7                       CVE-2020-13776    Negligible
libsystemd0       241-7~deb10u7                       CVE-2019-20386    Negligible
libsystemd0       241-7~deb10u7                       CVE-2020-13529    Negligible
libtasn1-6        4.13-3                              CVE-2018-1000654  Negligible
libudev1          241-7~deb10u7          (won't fix)  CVE-2019-3844     Medium
libudev1          241-7~deb10u7          (won't fix)  CVE-2019-3843     Medium
libudev1          241-7~deb10u7                       CVE-2013-4392     Negligible
libudev1          241-7~deb10u7                       CVE-2020-13776    Negligible
libudev1          241-7~deb10u7                       CVE-2019-20386    Negligible
libudev1          241-7~deb10u7                       CVE-2020-13529    Negligible
login             1:4.5-1.1                           CVE-2007-5686     Negligible
login             1:4.5-1.1                           CVE-2013-4235     Negligible
login             1:4.5-1.1                           CVE-2019-19882    Negligible
login             1:4.5-1.1              (won't fix)  CVE-2018-7169     Low
openssl           1.1.1d-0+deb10u6                    CVE-2007-6755     Negligible
openssl           1.1.1d-0+deb10u6                    CVE-2010-0928     Negligible
passwd            1:4.5-1.1                           CVE-2007-5686     Negligible
passwd            1:4.5-1.1                           CVE-2013-4235     Negligible
passwd            1:4.5-1.1                           CVE-2019-19882    Negligible
passwd            1:4.5-1.1              (won't fix)  CVE-2018-7169     Low
perl-base         5.28.1-6+deb10u1                    CVE-2011-4116     Negligible
tar               1.30+dfsg-6                         CVE-2005-2541     Negligible
tar               1.30+dfsg-6                         CVE-2019-9923     Negligible
tar               1.30+dfsg-6                         CVE-2021-20193    Negligible
Done.
```
