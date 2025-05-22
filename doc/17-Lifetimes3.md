# Lifetimes 3

Here we go, banging on like an old drum about lifetimes.
Last time, though - pinky promise, at least for a bit.

We can also try to *lifetime wash* a reference through
a structure.

```Rust
struct WashMeBaby {
    x: &i32
}

fn func() -> &i32 {
    let x = 1;
    let w = WashMeBaby { &x };
    w.x // Still not fooled
}
```

In fact, like the function, `WashMeBaby` also needs
lifetime parameters.

```Rust
struct WashMeBaby<'a> {
    x: &'a i32
}
```

The lifetime of the structure *must not exceed* the lifetime
of the variable that `x` references or bad things will happen.

The lifetime of `x` is remembered when we write `w.x` so
Ferris is still watching you!
