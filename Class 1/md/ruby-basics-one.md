
# Ruby Basics One

---

# A brief history of Ruby

- Written by Yukihiro "Matz" Matsumoto in the mid 1990s

- Implemented in C

- "I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language."' - Matz

---

# Ruby Versions

- Ruby comes in many versions and types

- We'll be using "MRI", or "Matz's Ruby Interpreter", written in C

- The latest version number can always be found at [ruby-lang.org/en](https://www.ruby-lang.org/en)

- To see what version you're running, type `ruby -v` at the command line

---

# Working with Ruby

- Ruby is stored in `.rb` files

- To run a `.rb` file, `cd` to it on the command line and type `ruby filename.rb`

````bash
$ cd ~/dev/my_project_dir
$ ruby filename.rb
````

---

# Working with Ruby - IRB

- IRB stands for "Interactive Ruby Shell"

- Ruby can be run line by line directly in IRB, providing a console that allows you to quickly test lines of Ruby without running a script

- To launch IRB, type `irb` in any open Terminal window and press enter

---

# Requiring other scripts in IRB

- Sometimes it will be beneficial to require an existing Ruby script in IRB

- To do so, use `require './myscript.rb'`

- This isn't a good way to simply run a script and see its output (use `ruby filename.rb`), rather to require existing Ruby methods and definitions

---

# Exercise: Working with Ruby

- Try creating a new file, `test.rb`

- Inside the file, put the most basic Ruby program:

  ````ruby
  puts "Hello World"
  ````

- Try running the program by `cd` -ing to the directory it's in and typing `ruby test.rb`

---

# Variables

To declare a variable in Ruby, use this syntax:

````ruby
my_var = "Fifteen"

z100 = 100.3
````

---

# Data types in Ruby

Ruby has a couple of different data types


- Floating Point (`Float`)

  - Numbers with decimal points

  - `10.32`, `65.323`, `.43`

- Integers (`Fixnum`)

  - A number without a decimal

  - `11`, `2000`, `42`, `0`, `-1`

---

# Data types in Ruby

- Strings (`String`)

  - A line of text

  - "Jon", "12", "Nuclear washing cereal machine"

- Symbols (`Symbol`)

  - A colon followed by some words or a string
  
  - `:january`, `:"hello world"`

---

# Data types in Ruby

- Booleans (`TrueClass`, `FalseClass`)

  - literally true or false

  - `true`, `false`

---

# Data types in Ruby

- Arrays (Array)

  - A collection of values

  - `[5,4,3, "omega", 15.9, "cappa"]`


- When assigned to variables, can be accessed with brackets

````ruby
  a = [5,4,3, "omega", 15.9, "cappa"]
  a[0]
  > 5
````

---

# Data types in Ruby

- Hashes (`Hash`)
  
  - Another way to store data, similar to an array

  - Used to store key => value pairs

  - `myHash = {:jan => "January", :feb => "February"}`

  - To access a value:
  `myHash[:jan]`

---

# Exercise

- Write a simple Ruby program with the following features:

  - Creates a variable called `name`, sets it equal to your name, then outputs the variable

  - Assigns a new array to a variable called `holidays` with a list of holidays inside of the array as strings

  - Creates a new hash assigned to a variable called `holidays_and_dates` - the keys should be a holiday and the values should be the date it is celebrated, both strings


