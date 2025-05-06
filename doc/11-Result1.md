# Result

We can return `Option` from a function to show if
something worked or not like this:

```Rust
fn get_if_nonzero(x: i32) -> Option<i32> {
    if x == 0 {
        None
    } else {
        Some(x)
    }
}
```

And this is very good for *soft errors*.

But if something fatal happens and we want a squishy human to intervene,
we need to provide some context to help fix the problem.

```Rust
fn must_be_nonzero(x: i32) -> Result<i32, &'static str> {
    if x == 0 {
        Err("Don't be so stupid, squishy human!")
    } else {
        Ok(x)
    }
}
```

This error will typically *bubble up* to the top level of
the program a bit like an exception.

```Rust
enum Result<T, E> {
    Ok(T),
    Err(E),
}
```

Like `Option`, `Ok` and `Err` are top-level symbols and we don't
need to write `Result::Ok`.


Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
