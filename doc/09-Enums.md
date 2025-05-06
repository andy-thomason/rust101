# Enums

If you want an object that can be one of two things,
we can use an `enum`.

```Rust
enum StringOrNumber {
    String(String),
    Number(u128),
}
```

Objects of this type can be wither strings or numbers.

We make one like this:

```Rust
let s = StringOrNumber::String("hello".to_string());
let n = StringOrNumber::Number(1234567890);
```

We can test two see which it is using `matches!`

```Rust
if matches!(s, StringOrNumber::String(_)) {}
```

We can test and extract using `if let`.

```Rust
if let StringOrNumber::String(x) = s {
    println!("string is {x}");
}
```

We can test and extract both variants using a `match`

```Rust
match s {
    StringOrNumber::String(x) => println!("string is {x}"),
    StringOrNumber::Number(y) => println!("number is {y}"),
}
```

Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
