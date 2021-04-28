# Instance Methods Lab

## Learning Goals

- Define a class.
- Build instance methods for the class.

## Overview

In this lab, we will practice defining classes and building instance methods
inside them. Specifically, you are going to be adding 2 instance methods to a
`Dog` and `Person` class.

## Instructions

Open this lab clicking the "Fork" button, cloning, and running your tests with `learn test`.

### 1. Define `Dog` in `lib/dog.rb`

Open `lib/dog.rb` and add a class definition for a `Dog` class.

### 2. Define `#bark` in `Dog`

Add an instance method `#bark` to your `Dog` class in `lib/dog.rb` that will puts `"Woof!"`

### 3. Define `#sit` in `Dog`

Add an instance method `#sit` to your `Dog` class in `lib/dog.rb` that will puts
`"The Dog is sitting"`.

### 4. Define a `Person` in `lib/person.rb`

Open `lib/person.rb` and add a class definition for a `Person` class.

### 5. Define `#talk` in `Person`

Add an instance method `#talk` to your `Person` class in `lib/person.rb` that
will puts `"Hello World!"`

### 6. Define `#walk` in `Person`

Add an instance method `#walk` to your `Person` class in `lib/person.rb` that
will puts `"The Person is walking"`.

When you're done, submit the lab with `learn submit`.

## Conclusion

With all tests passing, you have successfully written multiple instance methods
and _two_ different classes!

### Additional Note on Lab Testing

In this lab, we asked that you code your two classes in separate `dog.rb` and
`person.rb` files. You could, in theory, code both classes in the same file, or
even _code them in opposite files_ and still pass all tests. Why do you think that is?

...

...

When the tests are run in this lab, RSpec loads both the `dog.rb` and
`person.rb` files (this happens in the first two lines of `spec/spec_helper.rb`
using [`require_relative`][]). As long as you place your classes in one of the
files that RSpec loads, the tests will have access to them.

[`require_relative`]: https://apidock.com/ruby/Kernel/require_relative

While it isn't enforced, we do encourage you to separate classes into
individual, accurately named files. In a larger application, you might not
always need to load the `Dog` class when loading the `Person` class. As classes
get larger, it also becomes easier to manage your code if you know each file
contains _one_ class. Keeping to these conventions makes it easier in the future
to go back and read code you've previously written. 
