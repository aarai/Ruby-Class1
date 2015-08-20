

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