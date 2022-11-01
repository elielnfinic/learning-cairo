from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin
from starkware.cairo.common.math import unsigned_div_rem

// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*, range_check_ptr}(arr_len: felt, arr: felt*, run: felt, idx: felt) -> (
    sum: felt
) {
    if(arr_len == idx){
        return (sum = 0);
    }

    let (current_sum) = sum_even(arr_len, arr, run, idx + 1);
    let (div, rem) = unsigned_div_rem(arr[idx], 2);
    if(rem == 0){
        return (sum = arr[idx] + current_sum);
    }
    
    return (sum = current_sum);
}
