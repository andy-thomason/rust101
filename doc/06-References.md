# References

In C and C++ we have *pointers* as a tool to manipulate objects at a distance.
A pointer is a number that refers to a place in memory, either on the stack
on the heap or in static memory.

We can make a pointer and use it to change an object later.

```C
int x = 1;   // x (four bytes on the stack) starts as 1
int *y = &x; // we make a pointer to x
...
*y = 2;      // change the value of x to 2
```

In Rust we do the same with references.

```Rust
let x = 1;
let y = &x;
...
*y = 2;
```

As far as the computer is concerned, this is exactly the same,
but in Rust, references have some safety rails to avoid bad things.

Rust also has *fat pointers* which convey extra information.
A *slice* has both a pointer and a length, to avoid buffer overruns.

```Rust
let my_array = [10, 20, 30, 40, 50];
let my_slice = &my_array[1..3]; // refers to [20, 30]
```

A *fat pointer* is usually 16 bytes on a server-class machine and
an ordinary reference is 8 bytes.

Rust101 showcases training material from Amy's course.
See https://github.com/andy-thomason/rust101 for more.
