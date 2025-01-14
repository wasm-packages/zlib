libz.a:
	cd ./zlib-rs/ && \
		cargo build --release --target=wasm32-wasip1 -p zlib-rs --no-default-features --features rust-allocator
	cp -v zlib-rs/target/wasm32-wasip1/release/libzlib_rs.rlib $@
