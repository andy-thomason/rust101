
build: doc/00-Rust-Basics.md doc/01-Structures.md
	pandoc doc/00-Rust-Basics.md -t pdf > pdf/00-Rust-Basics.pdf
	pandoc doc/01-Structures.md -t pdf > pdf/01-Structures.pdf
