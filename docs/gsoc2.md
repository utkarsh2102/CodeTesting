<h1 align="center"> GSoC Proposal </h1>

<p align="center">
  <img src="/assets/rubytogether.png">
</p>

<p align="center">
    <h1 align="center"> Downstream Upstream Coordination in Ruby </h1>
    <h4 align="center"> 29.03.2020 <h4>
</p>

</br>
</br>

<p align="center">
  <img src="/assets/debian.png">
</p>

<p align="center">
    <h2 align="center"> Utkarsh Gupta </h2>
    <h2 align="center"> Debian Developer </h32>
</p>

---

## __**Project Description**__:

The Debian Ruby team has a lot of experience in packaging and managing Ruby libraries
and applications for Debian. During this work, they identified several issues in upstream
codebases that make it more difficult to build a Debian package out of Ruby gems directly.  

This project has two goals:  

1. Raise awareness of those issues among upstream maintainers in the Ruby community,
so that the lives of Debian maintainers, and of distribution maintainers in general, gets
easier; and  

2. Provide tools to automatically detect those issues, and fix them if possible.  

--- 

## __**Project Details**__:

We (including me, with my Ruby team member hat on), indeed, have faced several
repetitive issues in the upstream code that have interfered with our Debian work.
Whilst such pieces of code might be working for upstream, the downstream is constantly
patching them out.  

There are two kinds of issues here, namely:  

1. Issues where downstream needs to patch $things out ​ BUT​ they're required by the
upstream.  
For instance, the usage of ​`Bundler​`.  

2. Issues where with little cooperation & coordination, $things can be patched upstream,
which would, in turn, make the life of downstream maintainers relatively easy.  
For instance, dropping ​git​ in `​gemspec​`, et al.  

This (the 2nd point) is what this project intends to focus on.  
Let’s dig a little deeper about such problems.  

Talking to other fellow Ruby team members, going through the mailing list archives, and
grepping over the ​1510 Salsa repositories under the Ruby team’s namespace, we get a list
of such problems that could’ve very well been fixed upstream had there been enough
awareness about such issues and there existed a tool to warn (and potentially fix) them.  
But better late than never, this project intends to be ​ that​ tool.  

Below is the list of problems that this project initially aims to enlighten upstream about
(and if possible, help them patch these as well).  

---

## __**Problems Faced**__:

The following problems have been frequently faced and reported by the team members:  
  1. Using relative paths.  
     a. Either via “​require_relative​”,  
     b. Or via ”​require ../../lib/foo/bar​”.  
  2. Using ​$LOAD_PATH​.  
  3. Using ​git​ in gemspec​:  
	The upstream mostly (if not always) uses `git ls-files`​ which becomes a huge pain
	for downstream as it adds an unnecessary dependency on git.  
	A fix for this is as simple as using ​Dir.glob(“**/*”)​ instead :)  
	This works for both, upstream and downstream, then why not, you ask?  

---

## __**Other Problems**__:

(it’d be nice to have the following problems been taken care of as well)  

1. Shipping binary without manpage.  
	Whilst not a necessity, it’s always good to ship a manpage along with the binary.  

2. Use SemVer and try to not tighten dependencies.  
	This breaks a lot of things with minor version updates; perhaps would be best to
	just use something like “​~> x.y​” in gemspec (instead of “​~> x.y.z​”).  

3. Et cetera -- when raised by fellow team members.  

---

## __**Some Quick Stats**__:

There are presently about 1510 projects/repositories under the Ruby team namespace on
Salsa. Grepping them for patches applied by the team to fix above problems results in
some interesting statistics as shown below:  

1. Total number of patches: 2064  
2. Patches for dropping git in gemspec: 205  
3. Patches for fixing relative paths: 156  

As the number of packages increases, so shall the number of patches.  

---

## __**Solution/Approach**__:

Well, keeping aforementioned problems in mind, the best way forward is to extend
rubocop -- a Ruby static code analyzer and formatter, based on the community Ruby style
guide.  

As Antonio, a fellow Ruby team member and the mentor of this project, advised, RuboCop
has already got a pretty nice (and solid) infrastructure and so writing everything from
scratch would be doing nothing but just re-inventing the whole “static-analysis”
infrastructure. And we certainly don’t want to do that.  

So it’d be ideal to reuse RuboCop’s infrastructure and run it against our own rules, focusing
just on the problems we want to patch.  
Furthermore, upon exploring, we got the impression that creating a RuboCop plugin would
make things a lot easier.  

Much thanks to the RuboCop community, they’ve created a generator of RuboCop's custom
cops gem. Repository for the generator could be found here[1].  
[1]: ​https://github.com/rubocop-hq/rubocop-extension-generator  

---

## __**Project Deliverables​**__:

The project deliverables during/for 3-month period are as follows:  

1. A tool that can detect as many problems as possible, and ​ if possible​ , fix them.  
   a. Packaged and released in rubygems.org.  
   b. Packaged and released in the Debian archive.  
2. A guide for rubygems.org on good practices for upstream maintainers.  
3. Good documentation :)  

Post GSoC, with my Ruby team hat on, I intend to maintain it and enhance it further as
more problems are faced and reported.  

---
