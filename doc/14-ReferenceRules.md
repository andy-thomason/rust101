# Reference rules

If we have a varible, we can `borrow` the variable with a reference
so that we can read it later without owning the variable ourselves.

```rust
let a = String::from("xyz");

let aref = &a;

println!("{aref}"); // the same as println!("{a}");
```

We can also take a mutable reference and use it to change the
contents of the variable by remote control.

```rust
let a = String::from("xyz");

let amut = &mut a;

*amut = String::from("abc"); // changes the contents of a.

println!("{amut}"); // prints "abc"
```

But because of potential multithreaded badness, taking a reference
effectively locks that variable in a read-only state. This
prevents one thread writing to a variable as another thread is
reading it. This prevents *race conditions* between the two threads
which will result in you being called out of bed at 3am on new years
day to fix a bug.

```rust
let a = String::from("xyz");

let aref = &a; // 'locks' a.
let bref = &a; // this is fine as two immutable refs are ok.

let amut = &mut a; // Error: a is in a locked state.
```

Only a single mutable reference is allowed to a variable
when no immutable references are still alive.
