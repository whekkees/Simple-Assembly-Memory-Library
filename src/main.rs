

unsafe extern "C" {
fn memcpy(to: *mut u8, src: *const u8, len: usize) -> *mut u8;
fn memset(to: *mut u8, val: i32, len: usize) -> *mut u8;
fn memcmp(one: *const u8, two: *const u8, len: usize) -> i32;
}

fn main () { 

}
