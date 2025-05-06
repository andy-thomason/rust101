# Option

One specific `enum` is the `Option`.

We do not have `NULL` pointers like in C in safe Rust as these are
dangerous and will bring down your server if accessed. They
also add a good deal of work, checking every pointer for
being `NULL`.

Instead we have an enum `Option` which either contains any Rust type
or not. This allows us to say that something is is isn't there.

```Rust
enum Option<T> {
    Some(T),
    None
}
```

The `<T>` is a generic parameter that can take any Rust type.

As `Some` and `None` are shared publicly in the standard library,
we can use them simply like this:

```Rust
let is_there = Some(1);
let is_not_there : Option<i32> = None;
```

Rust will *infer* the type of `T` in the first
case, but we may need to supply the actual type
in the second case. In practice Rust manages to
infer most types and using an explicit type
like `Option<i32>` is quite rare.

We can test an option like this:

```Rust
if is_there.is_some() { ... }
if is_not_there.is_none() { ... }
```

We can test and extract using `if let` or `let else`
or `match`.

```Rust
if let Some(i) = is_there { println!("{x}"); }
let Some(i) = is_there else { panic!(); }
println!("{i}");
```

Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
