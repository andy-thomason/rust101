# String

Like `Box` there are many containers in the Rust standard library
that will keep objects alive on the heap.

The `String` container in Rust is a growable collection of bytes
encoded as UTF8.

```Rust
let my_string = String::from("Hola!");
println!("{my_string}");
```

In this case, my_string, is a 24 byte object consisting of
a pointer to the first byte, a length and a capacity.

The capacity allows the string to grow without allocating more memory,
which is slow.

In this case, we have converted a primitive string `"Hola!"` into
an owned, growable string.

We can extend the string, provided the variable is declared as `mut`.

```Rust
let mut my_string = String::from("Hola");
my_string.push_str(" Mundo!");
println!("{my_string}");
```

In this case we have 24 bytes on the stack in `my_string` and at least 4+7=11
bytes on the heap, probably much more.

When we get to the end of a function or `{ ... }` block, the variable
is dropped and the memory on the heap is deallocated.

`String` is much more flexible than its primitive equivalent `&str`
but also much slower - maybe thousands of times. However
as you begin your journey in Rust, it is ok to use `String` as it
make life easier for you, the coder.

A smaller, non-extendable, version of `String` is `Box<str>`

```Rust
let my_smaller_string = Box::from("你好世界");
```

Here we have four characters `你` `好` `世` `界`
for a total of 12 bytes as each character is 3 bytes.

