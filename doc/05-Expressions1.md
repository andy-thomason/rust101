# Rust Expressions - Part 1

Almost everything in Rust is an expression - ie. something that can give you a result.

This includes

* C-style arithmetic `1`, `a+1`, `x << 2`, `f(1, 2, 3)`
* `if`/`else` statements
* `match` statements (like `switch` on steroids)
* `{ }` blocks

For blocks, the last expression in the block is considered to be the result
provided it does not end with a semicolon.

```Rust
{
    let a = 1;
    f(1, 2, 3);
    123
}
```

Here the block contains three *items*, the `let` is not an expression
the function call *is* but the result is discarded and the final `123`
is the result of the block because it does not end in `;`.

```Rust
 { { { { { 123 } } } } }
```

Is the same as `123`

```Rust
fn dilema(si: bool) -> i32 {
    if si {
        123
    } else {
        456
    }
}
```

Is a function that returns `123` or `456`.

Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
