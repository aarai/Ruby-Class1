
# Ruby Three

#Methods Continued

````
def welcome
	puts "Hello World!"
end

def add
	puts 1 + 1
end

# Underscore between words, like variable names
def longest_word
  words = ['apple', 'pear', 'banana', 'plum']
  longest_word = words.inject do |memo,word|
    memo.length > word.length ? memo : word
  end
  puts longest_word
end

# Method names can have question marks in them
# Useful for tests and booleans
def over_five?
	value = 3
	puts value > 5 ? 'Over 5' : 'Not over 5'
end

````

---

# Object Inheritance

- In Ruby, one object can *inherit* from another object, taking all of its methods and attributes with it

- Inheritance is indicated at object definition, using the < operator

```ruby
class Dog < Animal
```
- We would say the above out loud like this: "class Dog extends Animal"

---

# Object Inheritance Example

```ruby
class Animal
  attr_accessor :legs
end

class Dog < Animal
  def woof
    puts "WOOF"
  end
end

my_dog = Dog.new
my_dog.legs = 4
my_dog.woof
>"WOOF"
```

---

# Exercise - Object Inheritance

- Create two objects. Have the second object inherit from the first

- Instantiate instances of each object and prove that the first object's methods can be accessed from an instance of the second object

- Use comments in your script to explain what you are doing

---

# `super`

- In a child object, we can call all of the existing code from a parent method using the `super` keyword

- See the next slide for an example

---

# `super`

```ruby
class User
  def create
    add_record(@name, @email)
    activate_account
  end
end

class Admin < User
  def create
    super
    add_permissions("Admin")
  end
end
```

---

# Exercise

- Create an "object zoo". You should create a class that models a Zoo which has at least one attribute called exhibits. Inside of this attribute is an array of object instances extended from an Animal object that have their own unique traits depending on which animal they are.

- Create unique methods on all of your objects depending on what kind of animal they are supposed to emulate. You could use super and even have a method on Animal that is customized per specific animal objects.

---

# The bang (!)

A bang reverses the boolean value

```ruby
class Item
  attr_reader :visible

#  ... initialization etc. here

  def visibility_toggle
    @visible = !@visible # Use Bang (!) to toggle
  end
end
```

^ The bang operator can also be invoked on functions to call an in-place replacement (destructive) to re-assign values to the calling object:

^string = "Some text"
string.upcase!
SOME TEXT

---

# .nil?

Checks to see if the referenced item is equal to nil, or nothing

```ruby
something = "indeed"
nothing = nil

something.nil?
false

nothing.nil?
true
```

^ .nil? is referring to the function .nil? that checks for a nil value

---

# unless

The opposite of if. Can be used as a one-liner, just like if can:

```ruby
widget_counter = 3 unless a.nil?

widget_counter = 5 if widgets.length == 5
```

^ This is an example of postfix inline conditionals in Ruby!

---

# Recursive Methods

A recursive method is a method that calls itself.

```ruby
def can_i_have_your_number
  puts "Can I have your number?"
  number = gets
  can_i_have_your_number unless number.length > 1
end
can_i_have_your_number
```

^ This recursive function will keep asking for the user's number until it gets some sort of response longer than one character.

---

# Exercise

Write a recursive method to subtract 1 from a variable equal to 100 until the variable is equal to 0.

^ Can demonstrate the value of setting default argument values with this example.

---

# Exercise

Create a "choose your own adventure" style game using Ruby. Store characters as classes with unique attributes and methods. Use methods and recursive methods to simplify the logical flow of the game and the `gets` method to get user input.

Use this exercise to be sure you're familiar with advanced Ruby topics.
