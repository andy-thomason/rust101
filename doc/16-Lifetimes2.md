# Lifetimes 2

What happens if we try to fool the compiler by
*lifetime washing* a reference through an intermediate.

```Rust
fn wash_lifetime(x: &i32) -> &i32 { x }

fn func() -> &i32 {
    let x = 1;
    let xref = wash_lifetime(&x); // try to fool the compiler.
    xref // fail: Ferris is not fooled.
}
```

This still fails. Ferris is watching you!

In practice, every function has some invisible
parameters:

```Rust
fn wash_lifetime<'a>(x: &'a i32) -> &'a i32 { x }
```

In this case it is simple, we have only one lifetime
input and output.

When we call the function

```Rust
    let x = 1;
    let xref = wash_lifetime(&x);
```

the lifetime parameter `'a` gets set to the lines
of code that x lives for.

When we return the reference, the compiler knows the
lifetime of the variable. *There is no fooling Ferris*.
