# Heap and stack

In Java, Javascript and Python, all objects are allocated
in a single region of memory called the *Heap*.

But in Rust, C and C++ local variables are allocated on
the *Stack*.

In a traditional computer this looked like this:

```
+---------------+ top of memory
| Stack         |
+---------------+ <- stack pointer
| Unreserved    |
+---------------+
| Heap          |
+---------------+
| Code          |
+---------------+ Bottom of memory
```

The stack grows down from the top of memory and the heap
grows up.

## Function calls and local variables.

When we call a Rust function, the stack pointer moves down
giving us some space for variables. When we exit from the
Rust function, the stack pointer moves up again, erasing
the local variables.

```Rust
fn my_funky_function() -> String {
    let x = 1;
    let y = "hello";
    format!("{y} {x}")
}
```

When we call `my_funky_function` the stack pointer moves
down a few bytes to make room for `x` and `y`.

When we return from the function, the stack pointer moves back up
again.

## Heap allocations

```Rust
fn my_funky_function() -> String {
    let x = Box::new(1);
    let y = Box::from("hello");
    format!("{y} {x}")
}
```

In this case, we use the `Box` container to allocate
variables on the heap.

This is much slower than using the stack, but allows
us to keep object alive after the return.
