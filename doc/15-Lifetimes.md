# Lifetimes

Although stack-based languages are much faster than their
garbage-collected cousins, they suffer from a number of problems.

First, we have the *dangling pointer* problem that is a favourite
foot-shooter in C and C++.

```C
int *func() {
    int x = 1;
    return &x; // Oops! x is about to die.
}
```

This is one of the many problems of C and C++ that Rust has fixed.

```Rust
fn func() -> &i32 {
    let x = 1;
    &x   // Error: Don't be silly.
}
```

Every variable has a lifetime that is measured in lines of code.
In the example above, the variable only lives for two lines
before the `}` kills it but the reference lives for longer
being returned by the function.

The rule is that no reference can outlive its variable.
