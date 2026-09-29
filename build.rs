fn main() {
    println!("cargo::rerun-if-changed=src/assembly/memcpy.asm");
    println!("cargo::rerun-if-changed=src/assembly/memset.asm");
    println!("cargo::rerun-if-changed=src/assembly/memcmp.asm");

    cc::Build::new()
        .file("src/assembly/memcpy.asm")
        .file("src/assembly/memset.asm")
        .file("src/assembly/memcmp.asm")
        .compile("memory");
}