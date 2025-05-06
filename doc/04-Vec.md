# Vec

As `String` is a heavyweight version of `&str` then
`Vec<T>` is a heavyweight version of `&[T]`. The `T`
can be any Rust type and is usually inferred from the context
so you do not need to specify it exactly.

`&[T]` is a reference to a slice of memory on the heap,
stack or static data. It contains a pointer to the first
element and a length.

A `Vec<T>` contains the pointer, the length and a capacity
for growing the vector without expensive allocation.

```Rust
let mut v = Vec::new();
v.push(1);
v.push(2);
println!("{v:?}");
```

Here we push two integers into our `Vec<i32>` and print it
using the debug print `{v:?}`.

Memory in a `Vec<T>` is allocated on the heap and there
is also a non-extendable version `Box<[T]>` which
contains only the pointer and length.

