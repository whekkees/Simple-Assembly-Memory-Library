Assembly Memory Library

Небольшая библиотека функций для работы с памятью, написанная на x86-64 Assembly (MASM) и вызываемая из Rust.

Функции
memcpy — копирует N байт из одного участка памяти в другой.
memset — заполняет участок памяти одним байтом.
memcmp — сравнивает два участка памяти побайтово.

Что использовалось
Rust
x86-64 Assembly
MASM (ml64.exe)
Windows x64 ABI

Сборка
cargo build --release

Проект использует cc для сборки Assembly-файлов вместе с Rust.