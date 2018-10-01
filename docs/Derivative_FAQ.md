# Derivative Integration: FAQ

## Here are some questions that you've been wanting answers to. Have a look here.

### Q1: What do you mean by "derivatives"?
Ans: **Please go through [this link](https://wiki.debian.org/Derivatives) in order to get a better understanding of the project.**

### Q2: "Derivatives" is okay, why "census"?
Ans: **Debian is like a parent project to a lot of distributions. And there so many derivatives of it. So Debian needs some way to track their children (derivatives). Hence "census".**

### Q3: So "census" is **just** counting of the derivatives?
Ans: **So this sub project in Debian will make sure to keep track of the derivatives' number. As well as integrate their and our infrastructure together.**  
**Know what interesting things that the derivatives are doing.**
**And what from those interesting things can Debian implement.**

### Q4: Oh, isn't that more of a management work?
Ans: **Well counting the numbers is management, but the infrastructure and/or the integration part needs a lot of scripting and system's internal knowledge.**  
**One needs to check if a repository of a derivative is working or not. And you need to do this with scripts.**

### Q5: Why is the integration part even necessary?
Ans: **Say a package 'X' has 'a.b.c' version in Debian. A derivative might be keeping different versions. How would Debian know that?**  
**This is where the integration part comes into play.**  
**Also, what if a derivative has an awesome package, we will never get to know that unless we are in sync with them.**

### Q6: Debian could rather have a centralized repository, so that every package goes to that repository. Thereby reducing the integration task and solving the problem. And every log could be recorded and traced.
Ans: **Technically, it is not possible. Partly possible for some, but not for the most part.**  
**If you're wondering why, then you'd need to understand how the repository is made. We'd recommend you to go through [this link](https://debian-administration.org/article/286/Setting_up_your_own_APT_repository_with_upload_support) and set up a local repository for yourself.**

### Q7: Can I do this on any Linux distribution?
Ans: **Try to do that in a Debian machine or may be Docker Container.**

### Q8: Alright, where can I start hacking?
Ans: **Here's the repository link: [Derivative's Team/Census](https://salsa.debian.org/deriv-team/census).**
