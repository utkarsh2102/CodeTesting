# Software Packaging for Debian Repositories

## Software Packaging   
`Software packaging` is nothing but assembling all the upstream files and the metadata about it into a single `.zip` or `.tar`, or whichever compression tool one uses.  
Most Linux distributions have their own `package management system`, like `Fedora` uses `rpm`, `Debian` uses `apt`, `Arch` uses `pacman`, and so on.  
Of course, packaging differs from one OS to another. For instance, the packaging workflow is different for `Windows`, `Linux`, and `MacOS`.  
Under Linux, the packaging even differs b/w different distributions.  
Yes, that means packaging for `.rpm` is different from what it is for `.deb`.  
In this report, we'd package a software for Debian (that is a Linux OS) repositories (a.k.a `apt` repositories).  

---

## About Debian

Since **Debian** is `free and open source`, it's [philosophy](https://www.debian.org/devel/join/nm-step3) is a crucial thing to keep in mind while doing anything related to Debian. Reading about `free software` in general is also a good idea.  
To go even further, the two documents, the [Social Contract](https://www.debian.org/social_contract) and the [Debain Free Software Guidlines](https://wiki.debian.org/DFSGLicenses) are important to be thorough with. These documents lay the basic principles of Debain and any work for and related to Debian should follow the same.  

Now, coming to Debian, it's [Developer Reference](https://www.debian.org/doc/manuals/developers-reference/) is fairly **very** important. It is a well documented manual for doing Debian related stuff, be it packaging or be it setting up Debian mirrors and servers.  

---

## Why Debian?

Oh well, the philosophy of Debian pretty much aligns with what I see free software and open source as. Ian Mudrock did a really good job in setting this project as a `"community project"` right from the start.  
Since then, Debian has become one of the largest and the most successful open source projects.  
Being stable like a rock, Debian is the preferred choice for a `server`. Almost all the big companies like `Google`, `Microsoft`, `Amazon`, et al use Debian as their preferred choice of server.  
Well, not only this, Debian gives recognition to its contributors by giving them various status in Debian, such as `Debian Maintainer`, `Debian Developer`, et al.  
Being a part of Debian for a while, I am one of the youngest Debian Maintainer in the entire Debian Project; and soon to be a Debian core-developer as well.  
This means, I can upload my own packages to the Debian archive, which would then become `apt-installable`. And by being a core Developer, I could use Debian machines, get voting rights, access debian-private, et al.  
Thus, Debian.  

---

## Packaging the Loomio Software

This brings us to the [packaging](https://wiki.debian.org/Packaging) wiki, which tells us the basics of `how-to`. Clearly enough, the first step is to set up your `system/host environment`.  
Also, for this report, we'd be packaging a free and open source software called `Loomio` for Debian.  
**Loomio** helps in making `collaborative decision making`. This has proved to be quite helpful for a lot of threads that couldn't come up to a single, simple decision.  
A lot of core developers have been using it and thus we'd be packaging this for the Debian repositories.  
Loomio is mostly written in `Ruby`, but also includes some `JavaScript` and `CoffeeScript`.  
Now, here's something interesting about Debian. For a software to be packaged for the apt repositories, all the dependencies of that software needs to be packaged separately and uploaded to the archive.  
A package can not install a gem or a module via `gem install xyz` or via `npm install xyz`. Using "internet" while `building` a package is prohibited, as per the Debian policy.  
Thus the idea is to package all the dependencies first and then the main package Loomio and make it `apt-installable` on the Debian machines.

---

## Project Details

The package, Loomio, has around over **30 unpackaged Ruby gems** (which are directly needed, as shown by the tracker), over **30 gems** that have **unsatisfiable dependency versions**, and around **10-15 unpackaged sub-dependencies**. In _total_, for the `Ruby` side of the code, we have **70-75 gems** that are needed to be taken care of, under the `Ruby team`. Hovering over the source code of Loomio also tells us the need to ensure the packaging of `fonts` under the `Debian Fonts Task Force` team. Also, for the same, we will need to package **mdi (2.2.43)** and also check with the `roboto-fonts`, as **roboto-v18-*** is needed for Loomio.  
Coming towards the **JavaScript** and the **CoffeeScript** section, we will need to package a few `simple modules` and a couple of `complex JS packages`, as needed by Loomio and mentioned in the `package.json` file, under the `client` directory of Loomio. If summed up, an `approximate` of **20-25 new modules** will be needed to package and a handful would be needed to **update**, **fix and embed**, under the `JavaScript team`.  
However, the **three packages** that could be `tricky` and `important` are **loomio-angular-router**, **loomio-angular-marked**, which have a couple of `sub-dependencies` themselves and **node-lodash**, whose `transition` might prove to be complex, as it has around **33 reverse dependencies**, including some key packages like **webpack**.  
Once all the `dependencies` and `sub-dependencies` are successfully `packaged` and `uploaded`, then would come the main package, **Loomio**. It is a fairly `big and complex` package with over **484 directories** and **4607 files** as a part of it’s code base. For the same, we’ll need to write a **pre/post-inst** and a **pre/post-rm** script to set the `configuration` the right way, including all the `symlinks` that are needed for `smooth installation`.  

**NOTE**: There are a lot of packages (~27) with `test failures` which are to be fixed before we can proceed. Hence, a good amount of Ruby and JavaScript knowledge would be needed for the same. Some pictures that are not following the `DFSG` would need to be `removed` and the `upstream tarball` would need to be `repacked`. Also, we’ll have to create our own personal repository (via `reprepro`) in order to test the successful installation of Loomio as it takes time for the package to clear the `NEW queue`.  

Here's a little preview of the workflow to follow:  

![Loomio Plan](#img)

---

## Setting up the Environment

Well, of course, setting up the required `env` for packaging is important. You cannot just package a software for `Debian Buster` on `Windows`,  or on any other `operating system` or any other `Linux distribution`, unless you set up the environment to do so.  
Setting up `envs` can be a pain, but let's make it as easier as it could get.  
There are a few `configuration` files (or **.*rc** files) that are needed to be edited.  
Here are the following ways you could set the packaging environment:  
- You can either set up a `Virtual Machine`.  
- Or, if you're on some other Linux `distro`, you can use `docker` via:  
    `$ docker run -it debian:unstable`  
- And, the best way would be to set up the host machine (your own local machine) as `Debian Unstable` (which is `bullseye`, at the moment).  

To get Debian unstable as your host, there are a couple of ways, too.  
But the most recommended way is to get the `*netinst* ISO image` from the debian.org and convert it into unstable via:  
- Change your `/etc/apt/sources.list` file to point to "unstable".  
- Run `apt update` and `apt full-upgrade`.  

Once the host is set, there are a couple of `configs` that are needed to be set as well.  
- Creating `~/.lintianrc` with suitable flags.  
- Appending `~/.zshrc` for `lintian`, releated stuff.  
- Writing `~/.quiltrc` with appropriate tags.  
- Creating `~/.sbuildrc` for being able to test packages in a clean `chroot` environment.  

Also, don't forget to install the basic packages like `npm2deb`, `gem2deb`, `git-buildpackage`, `devscripts`, `lintian`, `sbuild`, `quilt`, et al, via `apt`.  

---

## Packaging 101

There are various ways of making and building a `.deb` package. However, we'll take in account the easiest and the most common one.  
`dh`, `dh_make` are the root of all the things. `dh` stands for `debhelper`. Check it's `man` page for more information, if you need.  
Using `gem2deb`, `npm2deb` creates a basic template for a `Ruby` package and a `Node` package, respectively. Once done, they fetch the upstrem repository and _initalize_ the `debian/` folder inside the fetched repository.  
In addition to this, they also create 3 branches, namely, `pristine-tar`, `upstream`, and `master`. The `master` branch has the upstream repository with the `debian/*` files with it. The `upstream` branch just has the **original** upstream repository. And the `pristine-tar` branch has all the metadata and stuff. Not needed, for now.  

Now, when all the files inside the `debian/` are formatted properly (with the help of the debian `wiki`), we proceed for a `local build` via the command:  
`$ dpkg-buildpackage -uc -us`  
Run `ls ..` from outside the `debian/` folder and you'll notice the following the following directories and files (taking example of a `node module`, called `node-pretty-hrtime`):  
- Directories:  
    - `node-pretty-hrtime/`: Debian packaging work directory (`debian` directory).  
    - `node-pretty-hrtime-1.0.3/`: Debian packaging work directory (`upstream` sources `+` `debian` directory).  

- Packages:  
    - `node-pretty-hrtime_1.0.3-1_all.deb`: Debian `Binary` package.  
    - `node-pretty-hrtime_1.0.3-1.debian.tar.xz`: Debian `Source` package.  

- Upstream sources:  
    - `node-pretty-hrtime-1.0.3.tar.gz`: Upstream `tarball`.  
    - `node-pretty-hrtime_1.0.3.orig.tar.gz`: `Symlink` to upstream tarball (node-pretty-hrtime-1.0.3.tar.gz).  

- Building informations:  
    - `node-pretty-hrtime_1.0.3-1_amd64.buildinfo`: `Building informations` during packaging job.  

- Changes:  
    - `node-pretty-hrtime_1.0.3-1.dsc`: `.dsc` file summarizes information in debian directory (just picks some important fields) and adds checksum for the tar files which will use to build the .deb file [1].  
    - `node-pretty-hrtime_1.0.3-1_amd64.changes`: `.changes` is similar to `.dsc`, but has additional checksums for .dsc and .deb files too. DDs (Debian Developer) sign the changes file with their GPG key, so DDs know the checksums are not modified [1].  

(1): `https://wiki.debian.org/Javascript/Nodejs/Npm2Deb/Tutorial`

### Convert Source Package to Git Repository

```
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime $ rm -r node-pretty-hrtime  
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime $ gbp import-dsc --pristine-tar node-pretty-hrtime_1.0.3-1.dsc  
gbp:info: No git repository found, creating one.  
gbp:info: Version '1.0.3-1' imported under '/home/utkarsh2102/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime'  
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime $ cd node-pretty-hrtime  
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git status  
On branch master  
nothing to commit, working tree clean  
```

### Pushing Source Package to Salsa

```
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git remote -v  
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git remote add salsa-utkarsh2102-guest git@salsa.debian.org:utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime.git  
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git remote -v  
salsa-utkarsh2102-guest	git@salsa.debian.org:utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime.git (fetch)  
salsa-utkarsh2102-guest	git@salsa.debian.org:utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime.git (push)  
```

```
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git --no-pager branch  
* master  
  pristine-tar  
  upstream  
```

```
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git push salsa-utkarsh2102-guest master  
Enumerating objects: 31, done.  
Counting objects: 100% (31/31), done.  
Delta compression using up to 8 threads  
Compressing objects: 100% (25/25), done.  
Writing objects: 100% (31/31), 7.22 KiB | 3.61 MiB/s, done.  
Total 31 (delta 4), reused 0 (delta 0)  
To salsa.debian.org:utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime.git  
 * [new branch]      master -> master  
```

```
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git push salsa-utkarsh2102-guest upstream  
Total 0 (delta 0), reused 0 (delta 0)  
remote: To create a merge request for upstream, visit: https://salsa.debian.org/utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime/merge_requests/new?merge_request%5Bsource_branch%5D=upstream  
remote: To salsa.debian.org:utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime.git  
 * [new branch]      upstream -> upstream  
```

```
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git push salsa-utkarsh2102-guest pristine-tar  
Enumerating objects: 4, done.  
Counting objects: 100% (4/4), done.  
Delta compression using up to 8 threads  
Compressing objects: 100% (3/3), done.  
Writing objects: 100% (4/4), 1.68 KiB | 1.68 MiB/s, done.  
Total 4 (delta 0), reused 0 (delta 0)  
remote: To create a merge request for pristine-tar, visit: https://salsa.debian.org/utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime/merge_requests/new?merge_request%5Bsource_branch%5D=pristine-tar  
remote: To salsa.debian.org:utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime.git  
 * [new branch]      pristine-tar -> pristine-tar  
```

```
utkarsh2102@debian ~/js-team/pretty-hrtime/pretty-hrtime/node-pretty-hrtime $ git push salsa-utkarsh2102-guest master --tags  
Enumerating objects: 2, done.  
Counting objects: 100% (2/2), done.  
Delta compression using up to 8 threads  
Compressing objects: 100% (2/2), done.  
Writing objects: 100% (2/2), 318 bytes | 318.00 KiB/s, done.  
Total 2 (delta 0), reused 0 (delta 0)  
To salsa.debian.org:utkarsh2102-guest/pkg-loomio-application-tasks-node-pretty-hrtime.git  
 * [new tag]         debian/1.0.3-1 -> debian/1.0.3-1  
 * [new tag]         upstream/1.0.3 -> upstream/1.0.3  
 ```

---

## Work Done on Dependencies for Loomio

The following dependencies were packaged and uploaded to the archive.  
» ruby-ahoy-matey  
» ruby-aws-partitions  
» ruby-aws-sdk-core  
» ruby-aws-sdk-kms  
» ruby-aws-sdk-s3  
» ruby-aws-sigv4  
» ruby-geocoder  
» ruby-terrapin  
» ruby-devise-i18n  
» ruby-discourse-diff  
» ruby-discriminator  
» ruby-doorkeeper-i18n  
» ruby-iso  
» ruby-referer-parser  
» node-array-union  
» node-async-stacktrace  
» node-diacritics  
» node-dot-prop  
» node-flush-write-stream  
» node-irregular-plurals  
» node-loud-rejection  

The following dependencies have been packaged but are yet to be uploaded:  
» ruby-cancancan  
» ruby-google-cloud-env  
» ruby-google-cloud-core  
» ruby-google-cloud-translate  
» node-make-dir  
» node-plur  
» node-strip-ansi  

The following packages were updated and uploaded:  
» ruby-pg  
» ruby-activerecord-import  

The following dependencies have been fixed for autopkgtest:  
» ruby-paperclip (took a lot of time to debug :/)  
» ruby-maxminddb  
» node-tmp  

In the following process, I discovered a new option that could be passed to `dh_ruby`, which is `export DH_RUBY_GEM_INSTALL_WHITELIST_APPEND`.  
This was needed for `ruby-aws-partitions` as `test-suite` of `ruby-paperclip` needed `partitions.json`, thus the need. Thanks to the `man page` of dh_ruby.  

### Other Activities within Debian

Since I became a `Debian Maintainer`, I had various other roles to perform.  
Thus I packaged the following modules and helped in:  
» speedtest-cli  
» blurb  
» libfuture-asyncawait-perl  
» libasync-interrupt-perl  
» libbareword-filehandles-perl  
» libcompress-raw-bzip2-perl  
» libcompress-raw-lzma-perl  
» libcompress-raw-zlib-perl  
» libdancer2-perl  
» libdist-zilla-plugin-git-perl  
» libdist-zilla-plugin-makemaker-awesome-perl  
» libdist-zilla-plugin-ourpkgversion-perl  
» libfile-find-object-rule-perl  
» libfile-flock-retry-perl  
» libgeoip2-perl  
» libxxx-perl  
» libstrictures-perl  
» libsisimai-perl  
» libstring-tagged-perl  
» libperl-critic-policy-variables-prohibitlooponhash-perl  
» libnet-appliance-session-perl  
» Updated and uploaded `gitlab` 11.10.4 to experimental (thanks to praveen).  
» Uploaded `gitaly`, `gitlab-workhorse`.  
» Sponsored a couple of packages (DM access).  
» Helping DC19 `Bursary team`.  
» Helping DC19 `Content team`.  

---

## Change of Events

When I started off, I hit an obstacle. Little did we know about how to go about packaging complex applications like that.  
I have been helping out in packages like `gitlab`, `loomio`, et al. And towards the end of the last week, we learned that `loomio` needs to be done like `loomio`.  
First goes the `loomio-installer`, then would come the main package, loomio.  

Now, the steps that are to be followed for `loomio-installer` are as follows:  
» Get the app source.  
» Install gem dependencies.  
» Create database.  
» Create tables/run migrations.  
» Precomiple assets (scss -> css, et al).  
» Configure nginx.  
» Start service with systemd.  
» Pulling gems via `gem install` and modules via `npm install`.  
» Loomio would be done with the same way we’re doing gitlab.  

Now, for `loomio-installer`, we need to write a couple of `shell scripts` that could help in getting the loomio-installer set up smoothly.  

---

## Script for Adding a User

```
#!/bin/sh

# add loomio system user (requires adduser >= 3.34)
# don't muck around with this unless you KNOW what you're doing
user=loomio

echo "Creating/updating $user user account..."
adduser --system --home /var/lib/$user \
	--gecos "$user system user" --shell /bin/false \
	--quiet --disabled-password --disabled-login $user || {
  # adduser failed. Why?
  if [ `getent passwd $user|awk -F ':' '{print $3}'` -gt 999 ] >/dev/null ; then
	echo "Non-system user $user found. I will not overwrite a non-system" >&2
	echo "user.  Remove the user and reinstall loomio." >&2
	exit 1
  fi
  # unknown adduser error, simply exit
  exit 1
  }

chown ${user}: /var/lib/$user
```  

---

## Script for Writing in a Database (YML)

```
mysql: &mysql
  adapter: mysql2
  host: "localhost"
  port: 3306
  username: "root"
  password: ""
#  socket: /tmp/mysql.sock
  encoding: utf8mb4
  collation: utf8mb4_bin

postgres: &postgres
  adapter: postgresql
  host: /var/run/postgresql
  port: 5432
  username: loomio
  password:
  encoding: unicode
```  

---

## Nginx Configuration

```
upstream domain11 {
        server unix:/usr/share/loomio/tmp/loomio.sock;
}

server {
	listen		80;
	server_name	SERVERNAME_FIXME www.SERVERNAME_FIXME;
	rewrite		^ https://$server_name$request_uri? permanent;
}

server {
            listen   443;
            server_name SERVERNAME_FIXME www.SERVERNAME_FIXME;

            proxy_set_header   X-Real-IP  $remote_addr;
            proxy_set_header   X-FORWARDED-PROTO https;

	    ssl on;
	    ssl_certificate     loomio_SSL_PATH_FIXME/ssl/SERVERNAME_FIXME-bundle.pem;
	    ssl_certificate_key loomio_SSL_PATH_FIXME/ssl/SERVERNAME_FIXME.key;

            access_log /var/log/loomio/access.log;
            error_log /var/log/loomio/error.log;

            root   loomio_ROOT_FIXME/public/;
            index  index2.html;

            if ($http_user_agent ~* Googlebot) {
                return 403;
            }

	    location /uploads/images {
	      expires 1d;
	      add_header Cache-Control public;
	    }

            location /assets {
              expires 1d;
              add_header Cache-Control public;
            }

            location / {
                          proxy_set_header X-Real-IP $remote_addr;
                          proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                          proxy_set_header Host $http_host;
                          proxy_set_header X-Forwarded-Proto https;
                          proxy_redirect off;

                          client_max_body_size 4M;
                          client_body_buffer_size 128K;

                          if (-f $request_filename/index.html) {
                                           rewrite (.*) $1/index.html break;
                          }

                          if (-f $request_filename.html) {
                                           rewrite (.*) $1.html break;
                          }

                          if (!-f $request_filename) {
                                           proxy_pass http://domain11;

                                           break;
                          }
            }

	if ($http_user_agent ~ "Python-urllib" ) {
		return 403;
	}

	if ($http_user_agent ~ "libwww-perl" ) {
		return 403;
	}

	error_page 500 502 503 504  /50x.html;
	location = /50x.html {
		root  loomio_ROOT_FIXME;
	}
}
```   

---

## Installing Loomio

Lastly, we want to fetch Loomio from upstream for `loomio-installer`.  

```
#!/bin/sh

# Source variables
. /etc/loomio/loomio-common.conf

echo "Download loomio tarball version ${loomio_version} from github.com..."

# Downloading a branch and tag is supported
if test ${loomio_release_type} = "branch"
then
    export loomio_archive="loomio-release-${loomio_version}"
else
    export loomio_archive="loomio-${loomio_version}"
fi

chown ${loomio_user}: ${loomio_cache}
chown ${loomio_user}: ${loomio_user_home}

# Skip download if already present
if ! test -f ${loomio_cache}/loomio-${loomio_version}.tar.gz
then
    if test ${loomio_release_type} = "branch"
    then
	su  ${loomio_user} -s /bin/sh -c "wget -O ${loomio_cache}/loomio-${loomio_version}.tar.gz ${github_archive_url}/release/${loomio_version}.tar.gz"
    else
        su  ${loomio_user} -s /bin/sh -c "wget -O ${loomio_cache}/loomio-${loomio_version}.tar.gz ${github_archive_url}/v${loomio_version}.tar.gz"
    fi
fi

echo "Checking integrity of download..."
su  ${loomio_user} -s /bin/sh -c "sha256sum -c ${loomio_sha256sums}"

echo "Extracting files..."
su  ${loomio_user} -s /bin/sh -c "tar -C ${loomio_cache} -zxvf ${loomio_cache}/loomio-${loomio_version}.tar.gz >/dev/null"
    
echo "Copying files to ${loomio_home}..."
    
echo "loomio archive to copy: ${loomio_archive}"

su  ${loomio_user} -s /bin/sh -c "mkdir -p ${loomio_user_home}/public"
su  ${loomio_user} -s /bin/sh -c "mkdir -p ${loomio_user_home}/app-assets"

rsync -a ${loomio_cache}/${loomio_archive}/* ${loomio_home} --exclude tmp --exclude log --exclude app/assets --exclude public --exclude config --exclude Gemfile.lock
su  ${loomio_user} -s /bin/sh -c "cp -r  ${loomio_cache}/${loomio_archive}/app/assets/* ${loomio_user_home}/app-assets"
su  ${loomio_user} -s /bin/sh -c "cp -r  ${loomio_cache}/${loomio_archive}/public/* ${loomio_user_home}/public"
cp -r  ${loomio_cache}/${loomio_archive}/config/* /etc/loomio

echo "Applying patches..."
patch -p2 -t -d config -i /usr/share/loomio-installer/patches/set-rails-root.patch

echo "Copying source tarball to ${loomio_user_home}/public..."
cp -f ${loomio_cache}/loomio-${loomio_version}.tar.gz ${loomio_user_home}/public/source.tar.gz
```  

---

## Installing `loomio-installer`

### Pulling from my Personal Archive

I did a set up of `reprepro`, creating my own `apt` repository, hosted on my server.  
This means, I (or anyone can) pull packages from my machine until all the dependencies and the loomio-installer hits the `official Debian arhives`.  
Here's a snapshot showing my `personal archive`.  

![Personal Archive](#img)  

### Installing Loomio

Before we proceed, we need to configure `/etc/hosts` to point to the desired domain.  
My `/etc/hosts` file looks something like:  

`$ cat /etc/hosts`  
```
127.0.0.1	    localhost  
127.0.1.1	    utkarsh2102  
192.168.1.8     loomio.me  
// The following lines are desirable for IPv6 capable hosts  
::1     localhost ip6-localhost ip6-loopback  
ff02::1 ip6-allnodes  
ff02::2 ip6-allrouters  
```

Now, once set, we are set to install the `loomio-installer` via the command:  
`$ sudo apt install loomio-installer`  

This installs the `installer`, whose binary is `loomio` itself (and **not** `loomio-installer`).  

---

## Executing Loomio

On any Debian system, once my personal archive is set to `/etc/hosts` and `loomio-installer` is installed, one could execute the `binary` by the command:  
`$ loomio`  

And here's what will happen:  

![Executing Loomio](#img)

---

## Post-NTCC Work

Well, with my DM hat on, I am supposed to actually package loomio and the remaining `node` modules and then make `loomio` installable on the Debian systems.  
For the same, there are lots of `test failures` pending which are to be fixed and re-uploaded to the archive. After doing the same, we'd then need to write `maintainer scripts` for setting up `loomio` and also take care of the `symlinks` which clashes with the `loomio-installer`.  
Thus, a lot of work is needed to completely package such a complex software!  

---

## References

- https://wiki.debian.org/Packaging  
- https://www.debian.org/doc/manuals/developers-reference  
- https://www.debian.org/social_contract  
- https://wiki.debian.org/DFSGLicenses  
- https://wiki.debian.org/Teams/Ruby/Packaging  
- https://wiki.debian.org/Teams/Ruby/Packaging/Tests  

---