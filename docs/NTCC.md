# `Scraping` the `Web` using `Python`! :D

## `Python 101`

`Python` is an extremely basic dialect, and has an exceptionally clear syntax.
It urges software engineers to program without standard (arranged) code.
The least complex order in `Python` is the `print` mandate - it essentially prints out a line (and furthermore incorporates a new line, not at all like in `C`).  

There are two noteworthy `Python` variants, `Python2` and `Python3`.
`Python2` and `Python3` are altogether different from one another.
This paper utilizes `Python3`, since it all the more semantically right and incorporates even new features.

For instance, one contrast between `Python2` and `Python3` is the `print` articulation.
In `Python2`, the `print` statement is not a function, and in this way it is summoned without enclosures (brackets).
Be that as it may, in `Python3`, it is a function, and must be conjured with enclosures.  

`Python` is not only `object-oriented` but also a `funtional paradigm`.
Released in 1991, `Python` is a powerful language, ruling the world over.  
Oh, did I forgot to tell you that this language is completely open-source?  
Well, yeah, it is! So let's dive in and look at the basics of the language.

---

### `Basic Syntaxing`

- Intendation:

  Unlike `C`, `Python` works on indentation, rather than using brackets.
  One can use both, spaces or tabs to indent the given snippet or script.  
  However, the standard way to indent the `Python` code or script is by using a set of 4 spaces.
  Let us see a snippet for the same.

  ```
  a = 1
  if a == 1:
      # indent by using 4 spaces
      print("a is 1.")
  ```


- `Print` Statement:

  The most simple and the easiest statement we have in `Python` is the `print` statement.
  Unlike `C`, we need not declare the `datatype` of the variable, array, etcetra initially.
  We can straightaway proceed with the funtion assignment.  
  Also, all that required to use a `print` command is a `('  ')` or a `("  ")` .  
  Isn't that really easy? Imagine the same to be printed in `C` or `Java`?
  Let us see a snippet for the same.

  ```
  print("Ain't I sweet?")
  ```

  Hah, wasn't that really a cake-walk? Sweet stuff, right?  
  Let's do more! :D


- Comments in `Python`:

  A `hash`, denoted by `#`, is used to denote a comment, which often makes the code neat!  
  Anything after a `hash` symbol is generally ignored by the `Python interpreter`.  
  Easy? Let's have a look at a snippet for better understanding.

  ```
  # Imma  print a python joke right here!
  print("This is plagarism. You can't simple 'import' essay.")
  ```

- Line Terminators:

  Tired of using a `semicolon (;)` while writing codes in `C` and `Java`?  
  It's time for getting used to `Python`. In a beautiful world of `Python`, how do you think you can terminate a line?  
  Well, that's super easy here! Just change a line and you're sorted :D  
  Eh, doesn't sound right?  
  Let's have a look right away.

  ```
  # change as per the requirement
  number = 5
  # need an input from the user? uncomment the next comment ;)
  # number = int(input("Lemme know the digit/s, please? "))
  fact = 1
  # checking if the number is +ve, -ve or 0
  if number < 0:
     print("Is it too late now to say sorry?")
  elif number == 0:
    print("Hehe, that's 1!")
  else:
    for x in range(1,number + 1):
         fact = fact * x
    print("Result of the above math ",number, "is ",fact)
  ```

  That's pretty much it. Let's have a peek in the `Variable Types` in `Python`.

---

### `Variable Types`

   Remember the times  when you used to asssign the `datatype` to the variables, like `int`, `float`, `char`, etcetra in `C`?  
   Hehe, gone are the days now to declare the `datatype` of any variable!
   `Python` is not `statically typed`, rather, it is `object-oriented`!  
   Neither do we need to declare a variable here, nor it's type. That is because, in `Python`, every `variable` is an `object`.  
   Want to have a look over it? Let's do it!

   ```
   name="Utkarsh"   # That's a string!
   age=18           # Woah, that's an integer!
   height=165.5     # Oh, a floating point!    
   print(name)
   print(age)
   print(height)
   ```
   Well, here, as soon as the value is stored to the right of the `assignment operator (=)`, the memory of the `variable` is thereby declared and stored.  

   Let's go through the standard `variable types` we use in `Python`.
    - `Numbers`
    - `Strings`
    - `Lists`
    - `Tuples`
    - `Dictionary`


   Oh, don't you complain if the names are not very clear to you, okay?  
   Instead, let's do these in brief! :D  

- `Numbers`:

    Well, who isn't familiar with numbers? Ultimately, we've been using Math since a long time, right? But let's talk `Python` here!  
    These simply store the `numeric` values like `integers`, `floating points`, `real` and `complex` numbers, etcetra.
    And oh, the declaration is of course, done using the `=` operator, remember?  
    Oh, another feature we have is that we can delete the values using the `del` keyword.  
    Eh, confused? Here's an example for you.

    ```
    var1 = 12     #declaration of var1
    var2 = 21     #declaration of var2
    del var1      #deletion of var1
    ```
    Makes sense, now?  

    Well, the different types we can store in here are as follows:
    ```
    - `int`       # +ve, -ve or 0
    - `long`      # int with unlimited size
    - `float`     # the one which deals with fractions
    - `complex`   # existing in x+yZ form, where Z is square root of -1
    ```

    Oh, are they inter-convertible?  
    Well, yes. They most certainly are!  
    But how? Let me walk you through it.

    ```
    var1 = 12
    print(var1)
    var2 = float(var1) # this converts var1 from int to float ;)
    print(var2)
    ```

    Wondering what the output would be?  
    Nevermind, we have you covered ;)  

    ```
    OUTPUT: 7
            7.0
    ```

    Hehe, you got what happened, right?  
    Yay, we'll move one!


- `Strings`:

    So we know what `string` are, right? But what's different?  
    Ket's have a look here, now.  

    ```
    welc = 'Hello, World!'     #declaration of the string welc
    intro = “I’m Utkarsh”      #declaration of another string intro
    print(welc)
    print(str[0])              #prints 1st character in the string using slice operator
    print(str[2:5])            #prints 3rd to 6th character using slice operator
    print(welc+intro)          #adding 2 strings using concatenation operator
    print(str*2)               #repeating welc twice using repetition operator
    ```

    Now, what on earth will that print? ;)  
    Here's the output:  

    ```
    OUTPUT: Hello, World!
            H
            llo
            Hello, World!I’m Utkarsh
            Hello, World!Hello, World!
    ```

    So, what did you get?  
    We saw the `+` and the `*` operator in use. Amazing, right?  
    Oh, to add, we can also add `("""      """)`, if needed ;)


- `Lists`:

    Heard of `Arrays` in `C`? Well, `lists` in `Python` are quite same as them. They may contain any `varaiable type` and as many as you wish.  
    You can also iterate `lists` in a fairly simple way. Let us see how.

    ```
    list1 = []
    list1.append(1)
    list1.append(2)
    list1.append(3)
    print(list1[0])
    print(list1[1])
    print(list1[2])

    # let's do it via iteration
    for i in list1:
        print(i)
    ```    

    Hehe, can you possibly guess the output for the same?

    ```
    OUTPUT: 1
            2
            3
            1
            2
            3
    ```

    Oh, but what if you try to access an index which is not yet assigned?
    For instance,

    ```
    list2 = [12,21,29]
    print(list2[12])
    ```

    What do you think the output would be?  
    Well, here's that.

    ```
    OUTPUT: Traceback (most recent call last):
    File "<stdin>", line 2, in <module>
      print(list2[12])
    IndexError: list index out of range
    ```

    Hell, yea! Gives us an error.  
    But that's what we expected, right?  


-  `Tuples`:

    Coming from a `C` background? Well, you must not be knowing `Tuples`, but we have you covered.  
    Since we now have a thorough idea of what `lists` are, let us understand `tuples`, too.  
    There's a slight difference b/w `lists` and `tuples`. We've been using `[]` in lists, but here, we'd use `parenthesis ~ ()`.  
    Oh, also, you cannot change the `tuples`, unlike `lists`, once assigned.  
    Easy stuff, right?  
    Let's see an example for the same.

    ```
    tupx = (12, 21, 29)
    tupy = ('tj', 'ut')

    # the following statement isn't valid, as mentioned above.
    # tupx[1] = 16

    # so now let's have a new tupple, instead.
    tupz = tupx + tupy
    print tupz
    ```
    This would print the following:
    ```
    (12, 21, 29, 'tj', 'ut')
    ```

    Sweet? Let's move to `disctionaries` ;)


- `Dictionary`:

   Before getting theoretical, let's understand the concept by a small snippet.  

   ```
   dictionary = {"name": "Utkarsh", "age": "18", "sem": "3"}
   #here "name", "age", "sem" are the key values in the dictionary
   print(dictionary)
   print(dictionary["name"])

   dictionary["name"] = Tanisha
   dictionary["age"] = 19
   dictionary["sem"] = 5

   print(dictionary)
   ```
   That gives us the following output:
   ```
   {‘Utkarsh’, ‘18’, ‘3’}
   Utkarsh
   {‘Tanisha’, ‘19’, ‘5’}
   ```
   I guess this makes it very clear?  
   So let's move to `conditions`.  

- `Conditions`:

   If `Python` isn't your first language, then you might be thorough
with the logic, but not the syntax.  
   But let us walk through that, too.  
   For checking conditions, `boolean variables` are often used. The
expressions are quite simple and only returns a `true` or `false`.
   Let us see how.

   ```
   x=12
   print(x==12)  #prints "True"
   print(x==21)  #prints "False"
   print(x<29)   #prints "True"
   ```
   Quite simple, right?  
   Well, that's it. You're done with the basics, already ;)  

---

### `Operators`

- `and` & `or`:    
   The `and` and `or` operators are `boolean` operators.  
   Well, we all know about the intersection of two conditions, right?  
   `and` operator does that exactly. It'll return `true` if the intersection of condition is
satisfied.
   However, `or` operator will return `true` even when there's one condition that is `true` or satisfies the
condition.  
   Easy stuff? Well, let's have a look.

   ```
   if age==19 and name==“Utkarsh”:
   print("You are Utkarsh and 19.")

   if name=="Utkarsh" or name=="Tanisha":
   print("You are either Utkarsh or Tanisha.")
   ```

- `in`:  
   Well, what would you do if you want to look up
something in a big pool of something and there's no
`ctrl+F` available?  
   That's exactly where `in` operator is used.  
   Let's understand the same with the help of an example.  

   ```
   if name in [“Utkarsh”, “Anurag”]:
   print (“Hey, you're in the list!”)
   ```

- `is`:  
   Remember the `==` operator? Well, `is` is unlike that.  
   `is` operator tests whether the 2 variables `point` to
the same object or not.  
   Confused? Let's see what it does?  

   ```
   u = [12,21,29]
   t = [12,21,29]

   print u is t #it'll return "false"!
   ```
   Got it? The `==` would return `true` but not the `is`
operator.

- `not`:  
   Well, what if you're feeling crazy and want to return
the reverse of what you're doing?  
   Haha, no worries. `not` takes care of that. It
actually `inverts` the output of the actuall command.  
   That means you'd get the exact opposite of what you
type.  
   Sounds fun, right? ;)     

---

### `Loops and Funtions`

- `Loops`:

   Well, I'm pretty sure that you're aware of the literal meaning of the term "loop", right?  
   It is exactly the same here, too.  
   `Loop` is just a code that tells the compiler to `iterate` about itself until the end
condition is attained or satisfied.  
   Well, in `python`, we deal with 2 kinds of loops, as follows:

   - `for`:  
      We use these loops when we know the start and the end condition, or maybe the range.  
      Let's use both once.

      ```
      for u in range(3):
          print(u)
          #this'll print out: 0,1,2.

      for t in range(4, 7):
          print(t)
          #this'll print out: 4,5,6.
      ```

   - `while`:  
      We use these loops when we don't know how much time we need to run the loop to attain
the required output.  
      Let's use it once, too.

      ```
      c=0
      while c<7:
          print(c)     #you can guess the output, right? ;)
          count += 1
      ```

   Well, meanwhile we're using these loops, let us not forget the importance of `continue` and
`break` in our codes and thus, lives.  
   `break` simply throws us out of the loop we're iterating in.  
   `continue` skips the current iteration and continues with the loop it is iterating in.
   All clear, right? Let's move to `functions`.


- `Functions`:  

   `Fucntions`, if simply defined, is a block of code that does a task when called by the
programmar.  
   Well, there often comes this question, why functions?  
   So, what if there are 200 lines of code that is to be used 5 times in the whole program,
would you write that all over again? Or even copy-paste?  
   No, right? That's where `functions` comes in the picture.  
   They can be simply read and reused, anywhere and everywhere required. It save human effort
and thus time.  
   Sweet, right?  
   Let's see how would you define and call these functions.  

   - `Function Definition`:  

      Wondering why is there a `def` keyword in a python snippet you might have come across?  
      Well, that's because these functions start with the word `def`, which tell the compiler
that it is a function. It is followed by the `name` of the function and the `input arguements`
inside the  brackets ~ `()`.  
      Let's see the syntax of the same.
      ```
      def func_name (arguements):
          “func docstring”
          func_suite
          return [expression];
      ```

      Well, the term `func docstring` means or tells us about what action will the function
perform, in words.  
      Then comes the `suite`, basically the main body.  
      And lastly, there's a `return` statement, returning the value to the called and thereby
exiting the function.  

   - `Funtion Calling`:  

      Well, now, that's easy. You just need to pass the `arguements` to while calling a
function.  
      Once the user inputs the value of the arguements, the function is called. It then
performs it's task and returns the value to it's caller.  
      Just a cakewalk, right?  
      Let's do some action now.  

      ```
      #Let's define the function, again.
      def func_name (arguements):     
          “func docstring”
          func_suite
          return [expression];

      #Let's call it now ;)
      func_name (arguements)
      ```

      Hehe, easy, right? :D

---

### `Classes and Objects`:

   Oh, so this must be new, right?  
   Nevermind, let us walk through it, too.  
   Ever wished for a `template` for any work you do? :P
   Right, so `classes` does that. It is simply a template to create our `objects`.  
   There are pretty similiar to `dictionary` but guess what? They have wider advantages ;)  
   `Definition` is often done by the `class` keyword, followed by the name of the same.  
   Eh, confusing?  
   Nevermind, let us see an example of the same.  

   ```
   class boss:
       var="name"
   
   def function(self):
       print("We're inside the class. Yayy!")
   
   boss1=boss()
   ```

  Well, here's a little bit of explanation.  
  `boss1` is the 1st object defined within the class.  
   Also, the variables of any `objects` can be defined or accessed, simply by writing the
following statement:  
   ```
   boss1.name
   ```
   Quite simple, right? ;)

---

   Well, with this we come to an end of knowing `Python`.  
   We know enough of `python`  to use it in `web scraping`.  
   Let's take a leap of faith and jump to the same ;)  
   Here we go..  

---

## `Web Scarping`:

`Web Scraping` or `Web Data Extraction` and `Web Collection` is the process 
of extract data from websites, access the `World Wide Web` (WWW) using the 
`Hypertext Transfer Protocol` (HTTP).  

This is the way to completely copy large data in a central local 
database or in a spreadsheet. This includes the extraction and extraction 
process. When restoring, the data must be unintentionally downloaded every 
time we open this page. The extraction of this extracted data can 
easily take place.  

The most important step in `web scraping` is analyzing the web site where 
the `web scraper` is located.
Decide that everything is useful data that they would consider as `"useful 
data"`. It generally extracts, needs useful data and uses it elsewhere for a 
different purpose.
Websites are created with text `markup languages` ​​such as `HTML`, `xHTML`.
Record it in the same way to make it easier for the user. A `Web Scraper` 
is a type of `Application Programming Interface` (API) for extracting data 
from a website.  

### `Advantages`:

- `Less Time Consuming`:  
   Manual data saving for the user can be hard, in order to save huge amount 
of data easily and quickly, web scraping plays an important part.


- `Centralized Data`:  
   To easilt get high amount of content at our local machine, `Web Scraping` 
is definitely THE technique you want to use.  


- `Inexpensive`:  
   Well, d'you actually think it'd cost you any much? Web scraping is a low 
cost service. The job is often done is efficently and in the way which is 
economically viable.

---

### `Applications`:

- `Collecting User Data`:  
   You might have came across several websites that publish information of the 
individual, like names, email-s, phone, locality, etcetra.  
   Saving this data for gaining information of individuals is called 
`content scraping`, `web indexing` or `data mining`.  
   These collected data can be used for sociological and economic 
purposes. Objectives such as assessing product sales, obtaining 
information about people in one place, brand competiton, or list of real 
estate, etcetra.

- `Web Page Building`:  
   Well, we all know that `web pages` are built on text `mark-up 
languages` like `HTML` and `xHTML`. `Web scraping` can be done on 
websites to store hige quantity of data and convert them
in to spreadsheets, database and text files, etcetra.  
   If we scrape several websites that contain scattered data about a 
person subject to the internet, we can obtain more advanced material on the 
same subject. This combined advanced useful data can be obtained from
data on the net, thereby also helping you to create your own websites.  

- `Data Science`:  
   Well, in basic terms, as far as data science is concerned, it can 
be used to extract significant data from the raw, unsigned, unstructural 
data and then studing it's pattern for extracting the useful 
information.  
   The previous reaction is studied and then the future predictions are 
made.  
   Well, guess what? All the data, the data scientists get, a part of it 
comes from `web scraping` ;)  

---

### `Web Scraping Techniques`:  

- `Manual Copy-Paste`:  
   Well, that's simple, isn't it :P  
   The data can be extracted manualy by copying the required data and 
then pasting to the desired location. Well, that is something which 
works when the scrapers are explicitly prohibited or blocked by several 
websites. When such a case arises, let your hands do some work ;)  

- `Text Pattern Matching`:  
   Who knows how powerful languages like Python and Perl can be?  
   Well, matching text pattern is yet another poweful approach to get 
the required data based on regular `expression matching facilities`.  

- `HTTP Programming`:  
   One can use `socket programing` to post HTTP requests to the web 
server`, which helps in retrieving several `static` and `dynamic` web 
pages.  

- `Machine Learning`:  
   To automate the process of extracting the data, we can use 
technologies like `Machine Learning` and `Computer Vision`, with a 
perfect blend of `Artifical Intelligence` ;)  

**NOTE**: There are several other techniques which can be adopted in 
order to scrape the web, like `DOM Parsing`, `Vertical Aggregation`, 
etcerta.  

**P.S.** We'll be using `Python Programming` for using `text pattern 
matching`, the basics of which was covered in the first half.  

---

### `Setting up a Python as a Web Scraper`:

Well, if you're a little acquainted with Python, you'd know that we'll 
have to use certain packages in order to attain the desired results.  
So here, we'd need two packages in order to scrape the require the web page, 
namely: 
- `requests`:  
   For making web request, through `HTTP`.  

- `BeautifulSoup4`:  
   For the conversion of required data into `HTML` and for it's further processing.  

We can use a simple `pip` command to install both the packages.  

`pip install request BeautifulSoup4`

For now, we'd just need certain functions, like:  
- `get`
- `RequestException`
- `closing`
- `BeautifulSoup`

In a `Python shell`, we can run the following commands in order to `import` the above 
functions.  

- `from requests import get`
- `from requests.exceptions import RequestException`
- `from contextlib import closing`
- `from bs4 import BeautifulSoup`

---

### `Making Web Requests`:

Well, since we know the basic functionality of the language, let us make a web request.  


`#let's fetch the content at `url` by the get function through HTTP`
   
```
   res=request.get('https://abc.xyz')
   if(res.status_code!=200):
       print("Network Error: Status: " +r.status_code)
       exit()
```

Well, I believe most of the things were easy to get on. Now, let's wrangle 
HTML a little with `Beautiful Soup`.  

---

### `Wrangling HTML with BeautifulSoup`:

The funtion, `BeautifulSoup`, selects and extracts raw `HTML strings` that 
are often downloaded `request.get` statement and then parses them to proceed 
further. There are a lot of functions including the `BeautifulSoup` existing 
in the `bs4` python package.  

There's an important aspect, called the `select` method. 
It helps us choose the `CCSS selectors` behind every part of the text and 
helps us to locate them as individual elements.  

```
  soupe = bs4.BeautifulSoup(res.text, ‘html.parser’)
  soupe.select(‘title’)       
  #chooses any CSS selectors ;)
```
---

### `Scraping The Actual Webpage`  

Enough of theory, right?  
Let's do some hands-on ;)  
Here, for instance, we'll scrape the `wikipedia page` for `Web Scraping`.  
For us to begin with that, we should know the basics of `CSS`, but that's 
easy to learn, isn't it?  
Also, it is important to `inspect element` to get a clear idea of the 
classes, etcetra.  
Let's do it, now :D  


Here's a screenshot of the actual `Wiki Page` for `Web Scraping`.

![Web Scraping Wikipedia](/assets/Web_scraping.png)  

Let's do a bit of coding now ;)  

```
>>> import bs4
>>> import requests
>>> res123= requests.get(‘https://en.wikipedia.org/wiki/Web_scraping’)
>>> soupe= bs4.BeautifulSoup(res.text, “html.parser”)
>>> soupe.select (‘.mw-headline’)
>>> for i in soup.select(‘.mw-headline’):
...     print(i.text) 
 
```

Did ya'll get what we did here?   
Let's summarize a bit.  

- `res123` variable stores the output of the `requests.get` statement.  
   It's make the request through HTTP. It's more of an object, here.  

- Once we save this object into the `soupe` variable as the `HTML parser` as 
the `tree structure`, we'll now obtain the same text as a class of 
`beautiful soup` ;)  

- Here, we're trying to scrape the name of the `classes`, thus we shall use 
a `.` (dot), followed by the name of the class (`mw-headline`, here).

- After we apply the `soupe.select` statement, we shall now get a good 
amount of data to almost every elemnet of the class we'd want. 

- But here, we only require the `text names` of the classes. Therefore, we'd 
apply a look to get that sorted.  


All clear, right?   
Let's see the output, we get.   

---

### `Output`: 


- Web Scraping
- Techniques
- Human copy-and-paste
- Text pattern matching
- HTTP programming
- HTML parsing
- DOM parsing
- Vertical aggregation
- Semantic annotation recognizing
- Computer vision web-page analysis
- Software
- Example tools
- Javascript tools
- Web crawling frameworks
- Legal issues
- United States
- The EU
- Australia
- Methods to prevent web scraping
- See also
- References


Sweet, right?  
We can scrape the wiki page easily, but what if we want the page to be 
secure? 
:/  
Let us see the methods of "preventing" web scraping.

---

### `Methods of Preventing Web Scraping`

Well, there are certain points one could follow in order to prevent the 
scraping of the web page. They are as follows:  

- When wanting to stop the scraper, we can, manually or by the criteria of 
`geolocation`, block the `IP Address` of the user who's trying to scrape the 
content. This way the request sent will not be fetched and hence the 
scraping would be preventing.   

- Well, we just saw how we possibly can automate the entire scraping process 
by using languages like Python, Perl, etcetra. Well, what if we use certain 
tools, like `CAPTCHA`? How would that be by-passed? Can it be? ;)  

- Rendering `Angular` and `React` libraries, modern pages of `JavaScript` 
would be difficult to break through by the `HTTP requests`. This way we can 
possibly prevent the page from being scraped to a great extent.  

- Methods like `honeypot`, etcetra can be used to identify such IPs which 
are using the process of `automated bots` or `crawlers`.  

- Coming to the services, `anti-bot` and `anto-scraping` services are 
globally provided by the market to make the content scrape-prove. By using 
them, one can possibly reduce scraping to a great extent.  



Well, that was pretty much it. Hope this document helps you develop a lil' 
interest in `Web Scraping` ;)  

---

## Discussion

`Web Scraping` is an effective way of storing data from web pages to the local directory, 
study them and perform further tasks on it. Study of `CSS selectors` is done before scraping a 
website, and accordingly the required data is downloaded through looping out of all the data 
on the webpage. `Python` as an `object-oriented language` and its accessibility to free 
modules makes this task a lot easier.  

With the help of different modules within `Python`, we can perform various tasks with the
downloaded data within the code. For example, when economists or data scientists work with
numeric data, representation is required graphically, in tabular form etc. `Python` with the 
help of modules allows us to access these features easily, thus helping us to not only scrape 
data from websites but also analyse them in a simple fashion.  

`Web scraping` as we now know is a legally grey area, its legality hasn’t been made clear, it 
simply depends on the owner of the web page. Thus, it is important to keep legality object in our 
minds before scraping any websites. Illegal use of the scraped data can even drag the matter to the
court.  

Where there are websites protecting their personal data, there are also some immersive 
websites that extremely support web scraping and its effortless way of working and providing us with 
huge data that we require easily. `Google` and `Amazon` are the best examples for the same and 
even have built their own website scraping software, making the process even easier.  

---
