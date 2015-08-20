
# String Manipulation<br>with Ruby

---

# String Information

```ruby
awesomeString = "Hello World"
```
Is the string empty?

```ruby
awesomeString.empty?
>false
```
How many characters is the string?

`awesomeString.length`

---

# String Information

```ruby
awesomeString = "Hello World"
```
Concatenation: bringing two strings together

```ruby
awesomeString = "Hello"+ "World"
```
No + necessary, as long as it's just two strings (no variables):

```ruby
awesomeString = "Hello" "World"
```

^ Explicit (+) and implicit (no +) string concatenation

---

# String Concatenation II

Chains

```ruby
awesomeString = "Hello" << "World"
```
Concat method

```ruby
awesomeString = "Hello".concat("World")
```

---

# String Interpolation

An easy way to put a variable inside a string:

```ruby
awe = "Hello"
run = "World"
u = "Well #{awe}, #{run}!"
```
Any Ruby code can be put in between the curly braces, but typically variables are used

---

# Accessing String Elements

Loading specific parts of the string:

```ruby
awesomeString[0]			#character at pos 0
>"H"
awesomeString[0,3]		#from pos 0, get 3 chars
>"Hel"
awesomeString[0..5]		#from pos 0 thru pos 5 (inc)
>"Hello "
awesomeString[0...5]	#from pos 0 up to pos 5 (exc)
>"Hello"
awesomeString[2..-2]	#2 from the left, 1 from the right
>"llo Worl"
```

^ With two values, first is the start position, second is the number of characters to retrive.  A range 0..5 goes from 0 through 5 (including 5) while a range 0...5 (three dots) is *exclusive* of 5. 

---

# Replacing Words

```ruby
yourString = "Hello World!"
yourString["World"] = "Universe"
yourString
>"Hello Universe"
```

---

# Substitution, Repeating

Substitution with gsub

```ruby
yourString = "Hello World!"
yourString.gsub "World", "Universe" 	 #find, replace
```

gsub can also be used with a Regular Expression, a built-in Ruby pattern matcher:

```ruby
yourString.gsub /\w{5}/, "Wocka"		#find, replace
```

The **/ /** declares a regular expression, **\w** represents a "word" character, **{5}** specifies that it occurs 5 times consecutively

Check out [http://rubular.com/](http://rubular.com/) for a great guide and RegEx tester.

---

# Repeating Strings

```ruby
yourString * 3
>Hello World!Hello World!Hello World!
```

---

# Inserting Text

```ruby
yourString = "Hello World!"
yourString.insert 5, " to the"
>"Hello to the world!"
```

---

# Chomp and Chop, Reverse

```ruby
yourString = "Hello World! H"

yourString.chop
> "Hello World! "
myString = "Hello World\n"
myString.chomp
> "Hello World"

yourString.reverse
> "!dlroW olleH"
```

---

# Capitalization

```ruby
.upcase
.downcase
.swapcase
.capitalize
```

---

# Here Documents

Heredocs are free-format strings.

They allow you to specify long strings easily:

```ruby
yourText = <<DOC
"Hello Sir,
I know you enjoy learning about programming."
DOC
```

---

# Here Documents

You can use whatever word you'd like after the <<:

```ruby
yourText = <<SOMEWORD
"Hello Sir,
I know you enjoy learning about programming."
SOMEWORD
```

mind that there are no spaces on the closing line
on *either* side of SOMEWORD. *This is a common cause of syntax errors!*

---

# Exercise

Create a program to analyze a block of text supplied in a heredoc. The program should be encapsulated in a function that returns a hash of results like so:

```ruby
{words: 323, spaces: 100, vowels: 1003, consonants: 2232, most_used: "the"}
```

Feel free to add more dimensions of analysis to your results.
