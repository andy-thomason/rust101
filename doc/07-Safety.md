# Safety

With great power comes great responsibility and it is easy to randomly
crash C and C++ programs like in the following example:

```C
int *my_c_func() {
    int x = 0;
    return &x;
}
```

This returns a pointer to the variable `x`, but will crash if later we write a
value to the pointer, which now pointing at a random memory location because
the stack pointer has gone up.

In Rust, we use *references* which are just the same, but with a few guard rails.
The code will fail to compile if you do something as stupid as the example above.

```Rust
/// This will fail to compile.
fn my_rust_func() -> &i32 {
    let x = 1;
    &x
}
```

This code, however, is safe:

```Rust
fn my_safe_func(x: &i32) -> &i32 {
    x
}
```

The compiler knows that the object that x refers to
will not be destroyed while we are calling this function.


Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
