# Result 2

The error type can be anything but it is common to use an `enum` like this
for your error:

```Rust
enum MyError {
    BadThing(HowBad),
    ReallyBadThing { reason: String, points_deducted: i32 },
    RubbishCode,
}
```

In practice, this is only useful when someone actually tests the result
which in 99% of cases will not be true.

At the top level of your program, where performance matters a lot less,
you can use the magic `Box<dyn Error>` as a result.

```Rust
use std::error::Error;

fn my_high_level_function() -> Result<(), Box<dyn Error>> {
    ...
}
```

Here `Box<dyn Error>` is a fat pointer that can take any type
that implements the `Error` trait.

Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
