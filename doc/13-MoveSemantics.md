# Move semantics

One surprising thing about Rust is its use of move semantics by default.

Remember that in Rust, a variable holds the actual data of an object, not
just a pointer, so when we copy a variable we must do something special
to avoid duplications.

Some types automatically just copy their contents like in C.

```Rust
let a = 1;

let b = a; // automatic copy.

println!("{a} {b}");
```

Integers in Rust implement the `Copy` trait and behave like C variables.

But String and other containers do not implement `Copy` and in move semantics
the assigment will *move* the contents of one variable into another, dropping
the first variable.

```Rust
let a = String::from("I'm a heavy weight string.");

let b = a; // no automatic copy, `a` is dropped.

println!("{a} {b}"); // Error: a no longer exists.

```

We can fix this with a clone:

```Rust
let a = String::from("I'm a heavy weight string.");

let b = a.clone(); // no problems, an explicit copy was made.

println!("{a} {b}"); // Ok: a still exists.

```

Note that references like `&a` are `Copy` but mutable references
like `&mut a` are not.
