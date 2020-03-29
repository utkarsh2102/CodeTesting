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
