# Instance Methods Lab

## Learning Goals

- Describe an instance method.
- Call instance methods on an object.
- Build instance methods for an object.

## The Behavior of Objects

We know that classes act as a factory for our objects, capable of instantiating
new instances.

```ruby
class Dog
end

fido = Dog.new #=> #<Dog:0x007fc52c2cc588>
```

But what can this instance of a dog stored in the local variable `fido` do? In
fact, how do we even ask this object to do something?

### Dot Notation

We send objects messages asking them to perform an operation or task through a
syntax known as "Dot Notation".

```ruby
class Dog
end

fido = Dog.new #=> #<Dog:0x007fc52c2cc588>

fido.object_id #=> 70173135795280
```

In the example above, we send the `fido` instance a message `object_id` by
separating the receiving object, `fido` and the message, `object_id` by a dot
(`.`). When we send an object a message through dot notation, we are evoking the
corresponding method on the object. We are calling the `object_id` method on
`fido`. (Note: the `object_id` you get if you test out the above code will be
different.)

The `#object_id` method simply tells you the object's identifier in your
computer's memory (the place where all things live in your computer).

> I thought of objects being like biological cells and/or individual computers
> on a network, only able to communicate with messages. - Alan Kay

In dot notation, we call the object that received the method message the
"receiver" and we call the method the "message".

```ruby
# The receiver is this very string      # reverse is the message
"Strings are instances and objects too".reverse
```

**Note:** As in JavaScript, dot notation can be used both to call a method and
to access an attribute of an object. (We'll talk about object attributes in Ruby
in the next lesson.) Unlike JavaScript, however, Ruby does not require the `()`
to be appended to a method's name when you call it. For example, these two lines
of code are equivalent:

```rb
fido.object_id
fido.object_id()
```

What this means is that the syntax for accessing an attribute and calling a
method can look the same in Ruby. It is important to keep this in mind as you
program in Ruby and stay aware of which one you're doing in a particular case.

### Instance Methods

All objects respond to methods and messages, like `#object_id` in the example
above. One interesting method provided is the `#methods` method that returns an
array of all the methods and messages an object responds to. We can evoke this
method via dot-notation. One of the great things you can ask every object in
Ruby is "What methods do you respond to?"

```ruby
class Dog
end

fido = Dog.new
fido.methods
#=> [:psych_to_yaml, :to_yaml, :to_yaml_properties, :local_methods, :try, :nil?,
# :===, :=~, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup,
# :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze,
# :frozen?, :to_s, :inspect, :methods, :singleton_methods, :protected_methods,
# :private_methods, :public_methods, :instance_variables,
# :instance_variable_get, :instance_variable_set, :instance_variable_defined?,
# :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send,
# :public_send, :respond_to?, :extend, :display, :method, :public_method,
# :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for,
# :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
```

As you can see, out of the box, our objects can do a lot of things. Where these
things come from and what they do are not so important right now because all of
that functionality is very low level and not interesting to our Dogs.

## Lab

If you haven't already, fork and clone this lab to your local environment and
run `learn test`. Follow along below to get the first few tests for the `Dog`
class to pass. Once you have those passing, you will complete the remaining
tasks on your own.

### Building Your Own Instance Methods

How do we add our own methods to our classes? In our Dog example, can we teach
our Dog a new trick? Can we teach our Dog to bark for example?

We can. We're used to defining methods already with the `def` keyword. If we
place this method definition within the body of a class, that method becomes a
specific behavior of instances of that class, not a generic procedure we can
just call whenever we want.

We call the methods defined within the object's class **Instance Methods**
because they are methods that belong to any instance of the class.

Let's create our `Dog` class in `lib/dog.rb` and define our `bark` instance
method:

```ruby
class Dog
  # Class body

  # Instance Method Definition
  def bark
    puts "Woof!"
  end
end
```

With this code in place, if you run the tests you should now be passing the
first three tests.

Now let's create an instance of `Dog` and verify that our `Dog` object knows how
to bark:

```ruby
class Dog
  def bark
    puts "Woof!"
  end
end

fido = Dog.new
fido.bark #=> "Woof!"
```

If you execute this code in the terminal by running `ruby lib/dog.rb`, you
should see "Woof!" written out.

By defining `#bark` within the `Dog` class, `bark` becomes a method of all
instances of Dogs. Let's create a second instance of `Dog`, `snoopy`, and verify
that snoopy also knows how to bark by running `ruby lib/dog.rb` again.

```ruby
class Dog
  def bark
    puts "Woof!"
  end
end

fido = Dog.new
fido.bark #=> "Woof!"

snoopy = Dog.new
snoopy.bark #=> "Woof!"
```

Objects can only do what we teach them to do via the code we write and the
methods we define. For example, currently, Dogs do not know how to sit.

```ruby
class Dog
  def bark
    puts "Woof!"
  end
end

fido = Dog.new
fido.bark #=> "Woof!"
fido.sit #=> NoMethodError: undefined method `sit' for #<Dog:0x007fa4e9a9e8a0>
```

In the same manner, instance methods, the methods that belong to particular
instances of particular classes, are not globally evocable like procedural
methods. They cannot be called without an instance.

```ruby
class Dog
  def bark
    puts "Woof!"
  end
end

fido = Dog.new

# Let's try just calling bark without fido
bark #=> NameError: undefined local variable or method `bark' for main:Object
```

### Classes as Blueprints

The ability to define methods and behaviors in our classes for our instances
makes Ruby classes behave not just as factories, capable of instantiating new
individual instances, but also as a blueprint, defining what those instances can
do.

### Instructions

Complete the following tasks to get the rests of the tests passing:

1. Add an instance method `#sit` to your `Dog` class that will puts "The Dog is sitting".
2. Define a `Person` class in `lib/person.rb`
3. Add an instance method `#talk` to your Person class that will puts "Hello World!"
4. Add an instance method `#walk` to your Person class that will puts "The Person is walking".

## Conclusion

With all tests passing, you have successfully written multiple instance methods
and _two_ different classes!

### Additional Note on Lab Testing

In this lab, we asked that you code your two classes in separate `dog.rb` and
`person.rb` files. You could, in theory, code both classes in the same file, or
even _code them in opposite files_ and still pass all tests. Why do you think
that is?

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
