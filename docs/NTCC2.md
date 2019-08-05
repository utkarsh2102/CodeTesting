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
To go even further, the two documents, the [Social Contract](https://www.debian.org/social_contract) and the [Debain Free Software Guidlines](https://www.debian.org/social_contract#guidelines) are important to be thorough with. These documents lay the basic principles of Debain and any work for and related to Debian should follow the same.  

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
**Loomio** helps in making `collaborative decision making`. This has been proved..