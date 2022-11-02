// Return summation of every number below and up to including n
func calculate_sum(n: felt) -> (sum: felt) {
    if(n == 0){
        return (sum = 0);
    }
    
    let (sub_sum) = calculate_sum(n = n - 1);
    let sum = n + sub_sum;
    return (sum = sum);
}
