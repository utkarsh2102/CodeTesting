# `Scraping` the Web using `Python`! :D

## `Python 101`

`Python` is an extremely basic dialect, and has an exceptionally clear syntax. 
It urges software engineers to program without standard (arranged) code. 
The least complex order in `Python` is the `print` mandate - it essentially prints out a line (and furthermore incorporates a new line, not at all like in `C`).  

There are two noteworthy `Python` variants, `Python2` and `Python3`. 
`Python2` and `3` are altogether different from one another. 
This paper utilizes `Python3`, since it all the more semantically right and incorporates even new features. 

For instance, one contrast between `Python2` and 3 is the `print` articulation. 
In `Python2`, the `print` statement is not a function, and in this way it is summoned without enclosures (brackets). 
Be that as it may, in `Python3`, it is a function, and must be conjured with enclosures.  

`Python` is not only `object-oriented` but also a `funtional paradigm`.
Released in 1991, `Python` is a powerful language, ruling the world over.  
Oh, did I forgot to tell you that this language is completely open-source?  
Well, yea, It is! So let's dive in and look at the basics of the language.

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
  # need an input from the user? uncomment this ;)
  #number = int(input("Lemme know the digit/s, please? "))
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



### `Variable Types`
  
  Remember the times  when you used to asssign the `datatype` to the variables, like `int`, `float`, `char`, etcetra in `C`?  
  Hehe, gone are the days now to declare the `datatype` of any variable!
  `Python` is not `statically typed`, rather, it is `object-oriented`!  
  Neither do we need to declare a variable here, nor it's type. That is because, in `Python`, every `variable` is an `object`.  
  Want to have a look over it? Let's do it!
  
  ```
  name="Utkarsh"   #That's a string!
  age=18           #Woah, that's an integer!
  height=165.5     #Oh, a floating point!
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
  
  
  
  
  
