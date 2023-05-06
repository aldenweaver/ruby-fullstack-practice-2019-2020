# Intro to Hashes Lab

## Learning Goals

- Build simple hashes.
- Access and modify data stored in a hash.
- Add new data to a hash.

## Introduction

It's time to practice what we've learned about Ruby hashes. In this lab, your
task is to implement a set of methods. Each method will require you to complete
some basic hash creation and modification. Use `learn` and follow the test
suite messages as you work through your solution.

## Instructions

Code your solution in the `intro_to_ruby_hashes_lab.rb` file located in the main
directory of this lab.

1. Create a method called `new_hash` that creates and returns a new, empty
   hash.

2. Create a method called `my_hash` that returns a valid hash. This hash should
   have at least one key/value pair of your choice.

3. Create a method called `pioneer` that returns a hash. This hash should have a
   key that is a symbol `:name` and whose value is a string, `'Grace Hopper'`.

4. Create a method called `id_generator` that creates and returns a hash with
   one key/value pair. The key should be a symbol, `:id`. For the value, provide a
   positive integer of your choice.

5. Create a method called `my_hash_creator` that takes in two parameters. In
   this method, create and return a hash with one key/value pair, using the first
   parameter as the _key_, and the second parameter as the _value_.

6. Create a method call `read_from_hash` that takes in two parameters. The first
   parameter is a hash, the second is a key. Used together, they will either
   produce a value on that hash corresponding to the key, or `nil` by default. Use
   these two parameters in conjunction to do just that.

7. Create a method called `update_counting_hash` that takes in two parameters.
   The first parameter is a hash, and the second is a key. The hash provided will
   have any number of keys, but all values will be integers. The `update_hash`
   method should do one of two things: increment an existing value based on the
   provided key parameter, or create a new key/value pair using the provided key,
   setting the value to `1`. So, for example, if we had the following hash:

```ruby
{
  :apples => 3
}
```

..and a provided key, `:apples`, `update_hash` should return an updated
hash:

```ruby
{
  :apples => 4
}
```

However, if the hash was given a key that doesn't exist, like `:oranges`, it
should return:

```ruby
{
  :apples => 3,
  :oranges => 1
}
```

## Conclusion

Hashes are an essential data type that we will use frequently. Now that you've
seen the basics of creating, reading and updating hashes, we can explore
some examples of more complicated hashes!

## Resources

- [What is a Hash in Ruby?](http://ruby.about.com/od/rubyfeatures/a/hashes.htm)
- [Ruby Documentation on Hashes](https://ruby-doc.org/core-2.5.1/Hash.html)

[rand]: https://ruby-doc.org/core-2.5.0/Random.html
