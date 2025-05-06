# Printing

The most useful debugging tool in Rust in the macro `println!`.
We will explain what a macro is later, but for now think of
it like a function.

To print some text, we write something like this:

```Rust
let my_name = "Amy";
println!("Hello {my_name}");
```

This will print `Hello Amy`.

To print more complex expressions, we need to put them
in as separate arguments.

```Rust
println!("The answer is {}", 6*7);
```

To print more complex objects, such as arrays, we need to use the
*debug* print mode.

```Rust
println!("My array is {:?}", [1, 2, 3]);
```

You can implement Display and Debug yourself for any objects.


Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
